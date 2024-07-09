import 'package:flutter/material.dart';
import 'package:tools_app/core/style/styles.dart';
import 'package:tools_app/featurs/mainplayer/widget/text_fild.dart';

class ListPlayers extends StatelessWidget {
  const ListPlayers({super.key});

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
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return SizedBox(
            width: widthq / 1.5,
            child: ListTile(
              title: textFild(),
              trailing: Icon(
                Icons.person_4_rounded,
                color: Styles.white,
              ),
            ),
          );
        },
      ),
    );
  }
}
