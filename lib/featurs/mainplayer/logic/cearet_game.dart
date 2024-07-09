import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final creatgame = ChangeNotifierProvider(
  (ref) => CearetGame(),
);

class CearetGame extends ChangeNotifier {
  int palyersCount = 3;
 
  addPlayer() {
    palyersCount++;

    print(palyersCount);
    notifyListeners();
  }

  deletPlayer() {
    if (palyersCount > 3) {
      palyersCount--;
    }
    print(palyersCount);
    notifyListeners();
  }
}
