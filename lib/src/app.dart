import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'configs/theme/theme.dart';
import 'modules/task/view/task_view.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ProviderScope(
      child: _FluentApp(),
    );
  }
}

class _FluentApp extends ConsumerWidget {
  const _FluentApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FluentApp(
      debugShowCheckedModeBanner: false,
      home: const TaskView(),
      theme: ref.watch(themeProvider),
    );
  }
}
