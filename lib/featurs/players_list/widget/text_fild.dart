import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tools_app/core/style/styles.dart';
import 'package:tools_app/featurs/players_list/logic/players_list.dart';

Widget textFild(String hint, int index) {
  return SizedBox(
    height: 50.0,
    width: 60.0,
    child: Consumer(
      builder: (context, ref, child) => TextField(
        onChanged: (value) {
          ref.read(playerslist).players[index] = value;
        },
        style: Styles.white15bold,
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
            hintText: hint,
            hintStyle: Styles.white15bold),
      ),
    ),
  );
}
