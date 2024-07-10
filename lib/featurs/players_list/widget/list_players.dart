import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tools_app/core/style/styles.dart';
import 'package:tools_app/featurs/players_list/logic/players_list.dart';
import 'package:tools_app/featurs/players_list/widget/text_fild.dart';

class ListPlayers extends StatelessWidget {
  const ListPlayers({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Styles.blackwidget,
      ),
      child: Consumer(
        builder: (context, ref, child) => ListView.builder(
          itemCount: ref.read(playerslist).players.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: textFild(ref.read(playerslist).players[index],index),
              trailing: Icon(
                Icons.person_4_rounded,
                color: Styles.white,
              ),
            );
          },
        ),
      ),
    );
  }
}
