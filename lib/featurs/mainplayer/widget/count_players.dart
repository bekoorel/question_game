import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tools_app/core/style/styles.dart';
import 'package:tools_app/featurs/mainplayer/logic/cearet_game.dart';
import 'package:tools_app/featurs/mainplayer/widget/text_app.dart';

class CountPlayers extends StatelessWidget {
  const CountPlayers({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Styles.blackwidget,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Consumer(
              builder: (context, ref, child) => TextButton(
                onPressed: () {
                  ref.read(creatgame).addPlayer();
                },
                child: text('+'),
              ),
            ),
            const VerticalDivider(),
            Consumer(
              builder: (context, ref, child) =>
                  text(ref.watch(creatgame).palyersCount.toString()),
            ),
            const VerticalDivider(),
            Consumer(
              builder: (context, ref, child) => TextButton(
                onPressed: () => ref.read(creatgame).deletPlayer(),
                child: text('-'),
              ),
            ),
          ],
        ));
  }
}
