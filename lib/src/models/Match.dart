
import 'Player.dart';

class Match {
  List<Player> playerList;
  DateTime date = DateTime.now();
  late Player winner;
  Map roundList = {
    "Dos tríos": 7,
    "Un trío y una escalera": 8,
    "Dos escaleras": 9,
    "Tres tríos": 10,
    "Dos tríos y una escalera": 11,
    "Dos escaleras y un trío": 12,
    "Tres escaleras": 1
  };
  Player? continental;

  void initMatch() {
    for (var player in this.playerList) {
      player.pointsMatch = 0;
    }
  }

  Match(this.playerList) {
    initMatch();
  }
}
