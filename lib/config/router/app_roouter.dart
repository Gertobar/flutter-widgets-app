import 'package:go_router/go_router.dart';
import 'package:widgests_app/features/presentation/screens/buttons/buttons_screen.dart';
import 'package:widgests_app/features/presentation/screens/cards/cards_screen.dart';
import 'package:widgests_app/features/presentation/screens/counter/counter_screen.dart';
import 'package:widgests_app/features/presentation/screens/home/home_screen.dart'show HomeScreen;
import 'package:widgests_app/features/presentation/screens/progress/progress_screen.dart';
import 'package:widgests_app/features/presentation/screens/screens.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => HomeScreen(),
    ),

    GoRoute(
      path: '/buttons',
      name: ButtonsScreen.name,
      builder: (context, state) => ButtonsScreen(),
    ),

    GoRoute(
      path: '/cards',
      name: CardsScreen.name,
      builder: (context, state) => CardsScreen(),
    ),

    GoRoute(
      path: '/progress',
      name: ProgressScreen.name,
      builder: (context, state) => ProgressScreen(),
    ),

    GoRoute(
      path: '/snackbars',
      name: SnackbaarScreen.name,
      builder: (context, state) => SnackbaarScreen(),
    ),

    GoRoute(
      path: '/animated',
      name: AnimatedScreen.name,
      builder: (context, state) => AnimatedScreen(),
    ),

    GoRoute(
      path: '/ui-controls',
      name: UiControlsScreen.name,
      builder: (context, state) => UiControlsScreen(),
    ),

    GoRoute(
      path: '/tutorial',
      name: AppTutorialScreen.name,
      builder: (context, state) => AppTutorialScreen(),
    ),

    GoRoute(
      path: '/infinite',
      name: InfiniteScrollScreen.name,
      builder: (context, state) => InfiniteScrollScreen(),
    ),

    GoRoute(
      path: '/counter-riverpod',
      name: CounterScreen.name,
      builder: (context, state) => CounterScreen(),
    ),

    GoRoute(
      path: '/theme-changer',
      name: ThemeChangerScreen.name,
      builder: (context, state) => ThemeChangerScreen(),
    ),
  ],
);
