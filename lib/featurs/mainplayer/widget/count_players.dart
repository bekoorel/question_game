import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tools_app/core/style/styles.dart';
import 'package:tools_app/featurs/mainplayer/logic/cearet_game.dart';
import 'package:tools_app/featurs/mainplayer/widget/text_app.dart';

class CountPlayers extends StatelessWidget {
  const CountPlayers({super.key});

  @override
  Widget build(BuildContext context) {
    double widthq = MediaQuery.sizeOf(context).width;

    return Container(
        margin: const EdgeInsets.all(8),
        width: widthq / 1.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Styles.blackwidget,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Consumer(
              builder: (context, ref, child) => TextButton(
                onPressed: () => ref.watch(creatgame).addPlayer,
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
                onPressed: () => ref.watch(creatgame).deletPlayer,
                child: text('-'),
              ),
            ),
          ],
        ));
  }
}
