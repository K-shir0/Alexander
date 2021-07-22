import 'package:alexander/domain/space.dart';
import 'package:alexander/view_model/home_page_state_notifier.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeSamplePage extends HookWidget {
  final String? id;

  const HomeSamplePage({@PathParam('id') this.id});

  @override
  Widget build(BuildContext context) {
    final state = useProvider(homePageProvider);
    final notifier = useProvider(homePageProvider.notifier);

    useEffect(() {
      WidgetsBinding.instance?.addPostFrameCallback((_) {
        notifier.fetchPage(id ?? '');
      });
    }, []);

    // スペースのタイトル
    final spaceTitle = state.spaces.firstWhere((element) => element.id == id).title;

    return Scaffold(
      appBar: AppBar(),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 256,
            child: HomeSampleSideMenu(currentSpaceId: id,),
          ),
          Expanded(
            child: Column(
              children: [
                Text(id ?? ''),
                Text(spaceTitle.isNotEmpty ? spaceTitle : 'Untitled'),
                Text(state.ideas.toString())
              ],
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
          (e) => SpaceLink(metadata: e, currentSpaceId: currentSpaceId,),
        )
        .toList();

    return SingleChildScrollView(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: useProvider(homePageProvider.notifier).onTapAddSpace(),
            child: const Text('add'),
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

  const SpaceLink({Key? key, required this.metadata, this.currentSpaceId}) : super(key: key);

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