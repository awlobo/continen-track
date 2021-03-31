import 'package:continentracker/src/models/Player.dart';
import 'package:continentracker/src/models/Match.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Check if rounds are being generated', () {
    final Map roundList = {
      "Dos tríos": 7,
      "Un trío y una escalera": 8,
      "Dos escaleras": 9,
      "Tres tríos": 10,
      "Dos tríos y una escalera": 11,
      "Dos escaleras y un trío": 12,
      "Tres escaleras": 1
    };
    final List<Player> playerList = [Player("Andrea"), Player("Fátima")];
    final match = Match(playerList);
    expect(match.roundList, roundList);
  });
}
