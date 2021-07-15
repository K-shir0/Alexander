import 'package:alexander/domain/space.dart';
import 'package:alexander/view_model/home_page_state_notifier.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeSamplePage extends HookWidget {
  final String? id;

  const HomeSamplePage({@PathParam('id') this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        children: [
          SizedBox(
            width: 256,
            child: HomeSampleSideMenu(),
          ),
          Text(id ?? ''),
        ],
      ),
    );
  }
}

class HomeSampleSideMenu extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final state = useProvider(homePageProvider);

    final spaceLinks = state.spaces
        .map(
          (e) => SpaceLink(metadata: e),
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
  final SpaceMetadata metadata;

  const SpaceLink({Key? key, required this.metadata}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = metadata.title;

    return Text(title.isEmpty ? 'Untitled' : title);
  }
}
