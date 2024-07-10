import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:tools_app/core/style/styles.dart';
import 'package:tools_app/featurs/players_list/widget/list_players.dart';

class Listplayers extends StatelessWidget {
  const Listplayers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.black,
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: LottieBuilder.asset('assets/space.json'),
            ),
            Container(
              margin: const EdgeInsets.all(8),
              alignment: Alignment.center,
              child: Column(
                children: [
                  const Expanded(flex: 6, child: ListPlayers()),
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () => context.go('/InsertPage'),
                      child: LottieBuilder.asset('assets/yes.json'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
