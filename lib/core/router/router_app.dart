import 'package:go_router/go_router.dart';
import 'package:tools_app/featurs/insert_quwetshan/screens/insert_page.dart';
import 'package:tools_app/featurs/mainplayer/screens/main_screen.dart';
import 'package:tools_app/featurs/players_list/screens/listplayers.dart';

class RouterApp {
  static List<RouteBase> routes = [
    GoRoute(
      path: '/',
      builder: (context, state) => const MainScreen(),
    ),
    GoRoute(
      path: '/Listplayers',
      builder: (context, state) => const Listplayers(),
    ),
    GoRoute(
      path: '/InsertPage',
      builder: (context, state) => const InsertPage(),
    ),
  ];
}
