import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:uuid/uuid.dart';

/// 現在は使用されていません。
@Deprecated('')
final ideaListPageProvider = StateNotifierProvider.autoDispose<
    IdeaListPageStateNotifier, IdeaListPageState>(
      (refs) => IdeaListPageStateNotifier(IdeaListPageState()),
);

/// 現在は使用されていません。
@Deprecated('')
class IdeaListPageState {
  List<Idea> ideaList = [];
}

/// 現在は使用されていません。
@Deprecated('')
class IdeaListPageStateNotifier extends StateNotifier<IdeaListPageState>
    with LocatorMixin {
  IdeaListPageStateNotifier(IdeaListPageState state) : super(state);

  void addIdea([String? id]) {
    final tmp = state.ideaList;

    final newIdea = Idea(id: const Uuid().v4(), onSubmittedAction: addIdea, onDeleteAction: deleteIdea,);

    final index = ideaIndexFindById(id ?? '');

    if (index != null) {
      tmp.insert(index + 1, newIdea);
      state = state..ideaList = tmp;
      return;
    }

    // 存在しないとき最後に追加
    tmp.add(newIdea);
    state = state..ideaList = tmp;
  }

  /// idにマッチするアイデアを削除する
  void deleteIdea(String id) {
    final index = ideaIndexFindById(id);

    if (index != null) {
      final tmp = state.ideaList;
      tmp.removeAt(index);

      state = state..ideaList = tmp;
    }
  }

  /// JSON形式で取得
  List getData() {
    return state.ideaList.map((e) => e.getData()).toList();
  }

  int? ideaIndexFindById(String id) {
    for (int i = 0; i < state.ideaList.length; i++) {
      if (state.ideaList[i].id == id) {
        return i;
      }
    }
  }
}

/// 現在は使用されていません。
@Deprecated('')
class Idea extends HookWidget {
  final String id;
  final Function(String) onSubmittedAction;
  final Function(String) onDeleteAction;
  String name = '';

  Idea({required this.id, required this.onSubmittedAction, required this.onDeleteAction});

  @override
  Widget build(BuildContext context) {
    final isDoubleDeleteKeyClick = useState(false);

    return Row(
      children: [
        Text(id),
        SizedBox(
          width: 500,
          child: RawKeyboardListener(
            onKey: (event) {
              if (event.logicalKey == LogicalKeyboardKey.backspace) {
                if (isDoubleDeleteKeyClick.value) {
                  onDeleteAction(id);
                }

                if (name.isEmpty) {
                  isDoubleDeleteKeyClick.value = true;
                }
              } else {
                isDoubleDeleteKeyClick.value = false;
              }
            },
            focusNode: FocusNode(),
            child: TextFormField(
              key: Key(id),
              initialValue: name,
              onFieldSubmitted: (_) {
                onSubmittedAction(id);
              },
              // onSubmitted: (_) {
              //   onSubmittedAction(id);
              // },
              onChanged: (_) {
                // print('aaa');
                name = _;
              },
            ),
          ),
        ),
      ],
    );
  }

  Map<String, String> getData() {
    return {id: name};
  }
}
