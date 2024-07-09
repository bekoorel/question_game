import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final playerslist = ChangeNotifierProvider(
  (ref) => PlayersList(),
);

class PlayersList extends ChangeNotifier {
  
  List <String> players=[];
}
