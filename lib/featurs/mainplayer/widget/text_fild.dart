import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tools_app/core/style/styles.dart';

Widget textFild() {
  TextEditingController controllar = TextEditingController();
  return SizedBox(
    height: 50.0,
    width: 60.0,
    child: Consumer(
      builder: (context, ref, child) => TextField(
        style: Styles.white15bold,
        controller: controllar,
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
            hintText: 'ادخل اسم اللاعب',
            hintStyle: Styles.white15bold),
      ),
    ),
  );
}
