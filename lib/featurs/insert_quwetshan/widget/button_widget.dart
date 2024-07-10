import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:tools_app/featurs/insert_quwetshan/logic/rundam_quwetshan.dart';

Widget buttonWidget(controllar) {
  return Consumer(
    builder: (context, ref, child) => GestureDetector(
      onTap: () {
        ref.read(rundamquwetshan).quwetshan.add(controllar);
      },
      child: LottieBuilder.asset('assets/yes.json'),
    ),
  );
}
