import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final playerslist = ChangeNotifierProvider(
  (ref) => PlayersList(),
);

class PlayersList extends ChangeNotifier {
  List<String> players = [];
  int pageNumaper = 0;

  getPageName() {
    String playerName = players[pageNumaper];
    pageSelect();
    if (pageNumaper == players.length) {
      return true;
    } else {
      return playerName;
    }
  }

  void pageSelect() {
    if (pageNumaper <= players.length) {
      pageNumaper++;
    }
  }
}
