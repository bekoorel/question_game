import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tools_app/core/style/styles.dart';

Widget text(String txt) {
  return Consumer(
    builder: (context, ref, child) => Text(
      txt,
      style: Styles.white45bold,
    ),
  );
}
