import 'package:flutter/material.dart';
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
              alignment: Alignment.center,
              child: const Column(
                children: [
                  Expanded(child: ListPlayers()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
