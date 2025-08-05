import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgests_app/config/router/app_roouter.dart';
import 'package:widgests_app/config/theme/app_theme.dart';
import 'package:widgests_app/features/presentation/providers/theme_provider.dart';

void main() {
  runApp(ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, ref) {
    // final isDarkMode = ref.watch(isDarkmodeProvider);
    // final int selectColor = ref.watch(selectColorProvider);
    final AppTheme appTheme = ref.watch(themeNonifierProvider);

    return MaterialApp.router(
      title: 'Flutter Widgets',
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: appTheme.getTheme(),
    );
  }
}
