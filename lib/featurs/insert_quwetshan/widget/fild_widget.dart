import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tools_app/core/style/styles.dart';
import 'package:tools_app/featurs/players_list/logic/players_list.dart';

Widget fildWidget(controller) {
  return Stack(
    children: [
      Positioned.fill(
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
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
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Styles.blackwidget,
            ),
            child: Consumer(
              builder: (context, ref, child) => TextField(
                controller: controller,
                style: Styles.white45bold,
                expands: true,
                maxLines: null,
                minLines: null,
                decoration: InputDecoration(
                  hintStyle: Styles.white15bold,
                  hintText:
                      '${ref.read(playerslist).getPageName()} اكتب سؤالك يا',
                ),
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
