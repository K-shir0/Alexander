import 'package:alexander/view_model/home_page_state_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DefaultPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    useProvider(homePageProvider);
    final notifier = useProvider(homePageProvider.notifier);

    // 一度だけ一覧を取得
    useEffect(() {
      WidgetsBinding.instance?.addPostFrameCallback((_) {
        notifier.initialize(context: context);
      });
    }, []);

    return Container();
  }
}
