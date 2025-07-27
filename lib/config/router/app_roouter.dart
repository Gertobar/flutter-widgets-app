import 'package:go_router/go_router.dart';
import 'package:widgests_app/features/presentation/screens/buttons/buttons_screen.dart';
import 'package:widgests_app/features/presentation/screens/cards/cards_screen.dart';
import 'package:widgests_app/features/presentation/screens/home/home_screen.dart' show HomeScreen;

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
  ],
);