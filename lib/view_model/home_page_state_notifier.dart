import 'package:alexander/domain/space.dart';
import 'package:alexander/service/model/space.dart';
import 'package:alexander/service/space.dart';
import 'package:alexander/view_model/model/home_page_state.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:uuid/uuid.dart';

final homePageProvider =
    StateNotifierProvider.autoDispose<HomePageStateNotifier, HomePageState>(
        (ref) => HomePageStateNotifier(const HomePageState(), ref));

class HomePageStateNotifier extends StateNotifier<HomePageState>
    with LocatorMixin {
  HomePageStateNotifier(HomePageState state, this.ref) : super(state);

  final ProviderReference ref;

  Function() onTapAddSpace() => () {
        final spaceId = const Uuid().v4();

        // スペースを追加する処理
        final spaces = [...state.spaces];
        spaces.add(SpaceMetadata(id: spaceId));
        state = state.copyWith(spaces: spaces);

        // 通知
        ref.read(spaceProvider).setSpace(SetSpaceRequest(id: spaceId));
      };

  Future<void> fetchSpace(BuildContext context) async {
    await ref.read(spaceProvider).getSpace().then((value) => value.when(
          success: (_) {
            state = state.copyWith(spaces: _.data.spaces);

            AutoRouter.of(context)
                .pushNamed('/test/home/${state.spaces.first.id}');
          },
          failure: (_) {},
        ));
  }
  
  Future<void> fetchPage(String id) async {
    await ref.read(spaceProvider).getPage(GetPageRequest(id: id)).then((value) => value.when(
      success: (_) {
        state = state.copyWith(ideas: _.data.ideas);
      },
      failure: (_) {},
    ));
  }
}
