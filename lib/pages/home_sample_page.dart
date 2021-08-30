import 'package:alexander/domain/idea.dart';
import 'package:alexander/domain/space.dart';
import 'package:alexander/view_model/home_page_state_notifier.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeSamplePage extends HookWidget {
  final String id;

  const HomeSamplePage({@PathParam('id') required this.id});

  @override
  Widget build(BuildContext context) {
    final state = useProvider(homePageProvider);
    // final ideaListState = useProvider(ideaListPageProvider);
    final notifier = useProvider(homePageProvider.notifier);
    // final ideaListNotifier = useProvider(ideaListPageProvider.notifier);

    useEffect(() {
      WidgetsBinding.instance?.addPostFrameCallback((_) {
        notifier.initialize(context: context, spaceId: id);
        // 初期アイデアの追加
        // ideaListNotifier.addIdea();
      });
    }, []);

    // スペースのタイトル
    final spaceTitle =
        state.spaces.firstWhere((element) => element.id == id).title;

    /// アイデア一覧
    final ideaList = state.ideas
        .map((e) => IdeaTextField(
              spaceId: id,
              idea: e,
            ))
        .toList();

    return Scaffold(
      appBar: AppBar(),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /**
           *
           * サイドメニュー
           *
           */
          SizedBox(
            width: 256,
            child: HomeSampleSideMenu(
              currentSpaceId: id,
            ),
          ),
          /**
           *
           * アイデアリストページビュー
           *
           */
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(id),
                  TextFormField(
                    initialValue: spaceTitle,
                    decoration: const InputDecoration(
                      hintText: 'Untitled',
                    ),
                    onChanged: notifier.onChangedSpaceTitle(id),
                  ),
                  Text(state.ideas.toString()),
                  ...ideaList
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class HomeSampleSideMenu extends HookWidget {
  final String? currentSpaceId;

  const HomeSampleSideMenu({this.currentSpaceId});

  @override
  Widget build(BuildContext context) {
    final state = useProvider(homePageProvider);

    final spaceLinks = state.spaces
        .map(
          (e) => SpaceLink(
            metadata: e,
            currentSpaceId: currentSpaceId,
          ),
        )
        .toList();

    return SingleChildScrollView(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: useProvider(homePageProvider.notifier).onTapAddSpace(),
            child: const Text('スペースを追加'),
          ),
          Column(
            children: spaceLinks,
          )
        ],
      ),
    );
  }
}

class SpaceLink extends StatelessWidget {
  final String? currentSpaceId;
  final SpaceMetadata metadata;

  const SpaceLink({Key? key, required this.metadata, this.currentSpaceId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = metadata.title;

    return InkWell(
      onTap: () {
        // スペースidと一致していないときのみにページを飛ばす
        // 理由：apiのfetchが何回も呼ばれるため
        if (metadata.id != currentSpaceId) {
          AutoRouter.of(context).pushNamed('/test/home/${metadata.id}');
        }
      },
      child: Text(title.isEmpty ? 'Untitled' : title),
    );
  }
}

class IdeaTextField extends HookWidget {
  final String spaceId;
  final Idea idea;

  const IdeaTextField({required this.spaceId, required this.idea});

  @override
  Widget build(BuildContext context) {
    final notifier = useProvider(homePageProvider.notifier);

    return Row(
      children: [
        Text(idea.position.toString()),
        Expanded(
          child: TextFormField(
              key: Key(idea.id),
              initialValue: idea.title,
              onFieldSubmitted: (_) {
                notifier.onEnterKeyAction(spaceId, idea.id)();
              },
              onChanged: notifier.onChangedIdeaTitle(spaceId, idea.id)),
        ),
      ],
    );
  }
}
