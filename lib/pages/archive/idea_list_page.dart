import 'package:alexander/view_model/idea_list_page_state_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// このページは現在は使用されていません。
///
/// このクラスの下にはドラッグアンドドロップのサンプル実装が記述されている
@Deprecated('')
class IdeaListPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final state = useProvider(ideaListPageProvider);
    final notifier = useProvider(ideaListPageProvider.notifier);

    useEffect(() {
      WidgetsBinding.instance?.addPostFrameCallback((_) {
        notifier.addIdea();
      });
    }, []);

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: state.ideaList,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
    );
  }
}

// class Ideas {
//   Ideas() {
//     addFunction(const Uuid().v4());
//   }
//
//   final List<Idea> ideas = [];
//
//   void addFunction(String id) {
//     final uuid = Uuid().v4();
//
//     final newIdea = Idea(id: uuid, onSubmittedAction: addFunction);
//
//     for (int i = 0; i < ideas.length; i++) {
//       if (ideas[i].id == id) {
//
//         print(ideas);
//         ideas.insert(i, newIdea);
//         return;
//       }
//     }
//
//     ideas.add(newIdea);
//
//     // if (ideas.isEmpty) {
//     //   final uuid = Uuid().v4();
//     //
//     //
//     //
//     //   ideas.add(Idea(
//     //     id: uuid,
//     //     onSubmittedAction: (String id) {
//     //       addFunction(uuid);
//     //     },
//     //   ));
//     //
//     //   return;
//     // }
//   }
// }
//
// class Idea extends HookWidget {
//   final String id;
//   final Function(String) onSubmittedAction;
//
//   const Idea({required this.id, required this.onSubmittedAction});
//
//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       onSubmitted: (_) {
//         onSubmittedAction(id);
//       },
//     );
//   }
// }

// class IdeaListPage extends HookWidget {
//   final List<Widget> ideas = [];
//   final List<GlobalKey> keys = [];
//
//   final length = 3;
//
//   @override
//   Widget build(BuildContext context) {
//     final red = useState(false);
//
//     return Scaffold(
//       appBar: AppBar(),
//       body: Column(
//         children: [
//           Idea(),
//           DragTarget(
//             builder: (context, cd, rd) {
//               return Container(
//                 width: 200,
//                 height: 200,
//                 color: red.value ? Colors.red : Colors.grey,
//               );
//             },
//             onWillAccept: (_) {
//               print(true);
//               red.value = true;
//               return true;
//             },
//             onAccept: (_) {
//               print('置かれた');
//             },
//             onLeave: (_) {
//               red.value = false;
//             },
//           )
//         ],
//       ),
//     );
//   }
// }
//
// class Idea extends HookWidget {
//   @override
//   Widget build(BuildContext context) {
//     final icon = const Icon(Icons.drag_indicator);
//
//     final drag = [
//       Text('アイデアアイデア'),
//     ];
//
//     return Row(
//       children: [
//         Draggable(
//           data: 'Data',
//           child: icon,
//           feedback: Material(
//             color: Colors.transparent,
//             child: Row(
//               children: [icon, ...drag],
//             ),
//           ),
//           onDragCompleted: () {
//             print('complete');
//           },
//         ),
//         ...drag
//       ],
//     );
//   }
// }
