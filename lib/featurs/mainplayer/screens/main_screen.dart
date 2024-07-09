import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tools_app/core/style/styles.dart';
import 'package:tools_app/featurs/mainplayer/widget/circle_widget.dart';
import 'package:tools_app/featurs/mainplayer/widget/count_players.dart';
import 'package:tools_app/featurs/mainplayer/widget/list_players.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

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
              child:const Column(
                children: [
                  Expanded(flex: 2, child: CircleWidget()),
                  Expanded(flex: 1, child: CountPlayers()),
                  Expanded(flex: 3, child: ListPlayers()),
                 
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
