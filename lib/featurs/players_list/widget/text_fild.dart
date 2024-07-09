import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tools_app/core/style/styles.dart';
import 'package:tools_app/featurs/players_list/logic/players_list.dart';

Widget textFild() {
  TextEditingController controllar = TextEditingController();
  bool subment = true;
  return SizedBox(
    height: 50.0,
    width: 60.0,
    child: Consumer(
      builder: (context, ref, child) => TextField(
        enabled: subment,
        style: Styles.white15bold,
        controller: controllar,
        decoration: InputDecoration(
            suffixIcon: IconButton(
                onPressed: () {
                  ref.read(playerslist).players.add(controllar.text);
                  print(
                      '-------------${ref.read(playerslist).players}------------');
                },
                icon: const Icon(Icons.check_circle_outline_sharp)),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
            hintText: 'ادخل اسم اللاعب',
            hintStyle: Styles.white15bold),
      ),
    ),
  );
}
