import 'package:alexander/view_model/home_page_state_notifier.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DefaultPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final state = useProvider(homePageProvider);
    final notifier = useProvider(homePageProvider.notifier);

    useEffect(() {
      WidgetsBinding.instance?.addPostFrameCallback((_) {
        print('取得');
        notifier.fetchSpace(context);
      });
    }, []);

    return Container(
      child: Text('test'),
    );
  }
}
