import 'package:go_router/go_router.dart';
import 'package:tools_app/featurs/mainplayer/screens/main_screen.dart';

class RouterApp {
  static List<RouteBase> routes = [
    GoRoute(
      path: '/',
      builder: (context, state) => const MainScreen(),
    )
  ];
}
