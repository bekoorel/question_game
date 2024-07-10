import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final rundamquwetshan = ChangeNotifierProvider(
  (ref) => RundamQuwetshan(),
);

class RundamQuwetshan extends ChangeNotifier {
  List<String> quwetshan=[];
}
