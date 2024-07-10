import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tools_app/core/style/styles.dart';
import 'package:tools_app/featurs/mainplayer/logic/cearet_game.dart';

import 'package:tools_app/featurs/mainplayer/widget/text_app.dart';
import 'package:tools_app/featurs/players_list/logic/players_list.dart';

class CircleWidget extends StatelessWidget {
  const CircleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  Colors.pink.withOpacity(0.5),
                  Colors.yellow.withOpacity(0.5),
                  Colors.blue.withOpacity(0.5),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Consumer(
              builder: (context, ref, child) => GestureDetector(
                onTap: () {
                  for (int i = 1; i <= ref.read(creatgame).palyersCount; i++) {
                    ref.read(playerslist).players.add('اضف اسم اللاعب');
                  }

                  context.go('/Listplayers');
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Styles.blackwidget,
                  ),
                  child: text('START'),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
