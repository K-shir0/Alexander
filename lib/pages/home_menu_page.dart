import 'dart:ui';
import 'package:alexander/domain/idea.dart';
import 'package:alexander/domain/space.dart';
import 'package:alexander/pages/selectchangebutton.dart';
import 'package:alexander/pages/shareuserinfo.dart';
import 'package:alexander/pages/theme/palette.dart';
import 'package:alexander/pages/userinfo.dart';
import 'package:alexander/view_model/home_page_state_notifier.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends HookWidget {
  final String id;

  const HomePage({@PathParam('id') required this.id});

  @override
  Widget build(BuildContext context) {
    final state = useProvider(homePageProvider);
    final notifier = useProvider(homePageProvider.notifier);

    useEffect(() {
      WidgetsBinding.instance?.addPostFrameCallback((_) {
        notifier.initialize(context, id);
        // 初期アイデアの追加
        // ideaListNotifier.addIdea();
      });
    }, []);

    final ideaList = state.ideas
        .map((e) => Column(
              children: [
                IdeaCard(
                  idea: e,
                  spaceId: id,
                ),
                const Gap(32),
              ],
            ))
        .toList();

    //画面サイズを取得
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: notifier.onEnterKeyAction(id, null),
        child: const Icon(Icons.add),
        backgroundColor: Palette.inviteandborder,
      ),
      body: SingleChildScrollView(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                const Userinfo(),
                NoteMenu(currentSpaceId: id),
              ],
            ),
            Column(
              children: [
                const Notshareuserinfo(),
                // メインメニューのウィジェット
                Container(
                  width: MediaQuery.of(context).size.width - 280,
                  height: size.height - 100,
                  color: Palette.bgContentsNormalColor,
                  child: Column(
                    children: [
                      // アイデア一覧
                      Expanded(
                        child: SingleChildScrollView(
                          child: Container(
                            color: Palette.bgContentsNormalColor,
                            child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 80, right: 80, top: 20),
                                child: Column(
                                  children: [
                                    if (!state.isLoading) ...ideaList,
                                  ],
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class IdeaCard extends HookWidget {
  final String spaceId;
  final Idea idea;

  const IdeaCard({required this.idea, required this.spaceId});

  @override
  Widget build(BuildContext context) {
    final notifier = useProvider(homePageProvider.notifier);

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        color: Palette.bgContentsLightColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
                key: Key('${idea.id}-idea'),
                initialValue: idea.title,
                maxLines: null,
                style: const TextStyle(fontSize: 24),
                decoration: const InputDecoration(
                    hintText: 'Untitled',
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none),
                onFieldSubmitted: (_) {
                  notifier.onEnterKeyAction(spaceId, idea.id)();
                },
                onChanged: notifier.onChangedIdeaTitle(spaceId, idea.id)),
            const Gap(32),
            //メインテキスト
            TextFormField(
                key: Key('${idea.id}-content'),
                initialValue: idea.content,
                maxLines: null,
                decoration: const InputDecoration(
                    border: InputBorder.none, enabledBorder: InputBorder.none),
                // onFieldSubmitted: (_) {
                //   notifier.onEnterKeyAction(spaceId, idea.id)();
                // },
                onChanged: notifier.onChangedIdeaContent(spaceId, idea.id)),
            const Gap(32),
            //マンダラボタンなどの表示
            SelectChangeButton(
              onTapDeleteAction: notifier.onDeleteKeyAction(
                spaceId,
                idea.id,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NoteMenu extends HookWidget {
  final String? currentSpaceId;

  const NoteMenu({this.currentSpaceId});

  @override
  Widget build(BuildContext context) {
    final state = useProvider(homePageProvider);

    //ノート名を格納する変数
    final spaceLinks = state.spaces
        .map(
          (e) => Column(
            children: [
              SpaceLinkWidget(
                metadata: e,
                currentSpaceId: currentSpaceId,
              ),
              const Gap(12),
            ],
          ),
        )
        .toList();

    //ノート追加の部分のウィジェット
    return Container(
      width: 280,
      height: 788,
      color: Palette.bgContentsLightColor,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: InkWell(
              onTap: () {},
              child: Row(
                children: [
                  const Icon(Icons.add_box_outlined),
                  const Gap(8),
                  const Text('ノート追加'),
                ],
              ),
            ),
          ),
          // 区切り線
          const Divider(
            thickness: 2,
            color: Palette.borderColor,
          ),
          //配列noteNameの要素が全てTextで表示される
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 1,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Gap(32),
                    ...spaceLinks,
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class SpaceLinkWidget extends HookWidget {
  final String? currentSpaceId;
  final SpaceMetadata metadata;

  const SpaceLinkWidget({this.currentSpaceId, required this.metadata});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // スペースidと一致していないときのみにページを飛ばす
        // 理由：apiのfetchが何回も呼ばれるため
        if (metadata.id != currentSpaceId) {
          AutoRouter.of(context).pushNamed('/home/${metadata.id}');
        }
      },
      child: Text(
        metadata.title.isEmpty ? 'Untitled' : metadata.title,
        textAlign: TextAlign.right,
        style: const TextStyle(fontSize: 15, color: Palette.titleTextColor),
      ),
    );
  }
}
