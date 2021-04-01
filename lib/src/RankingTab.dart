import 'package:flutter/material.dart';
import 'Keys.dart' as Keys;

class RankingNavigator extends StatefulWidget {
  @override
  _RankingNavigatorState createState() => _RankingNavigatorState();
}

class _RankingNavigatorState extends State<RankingNavigator> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: Keys.rankingNavigatorKey,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) {
              switch (settings.name) {
                case '/':
                  return RankingPage();
                default:
                  return RankingPage();
              }
            });
      },
    );
  }
}

class RankingPage extends StatefulWidget {
  @override
  _RankingPageState createState() => _RankingPageState();
}

class _RankingPageState extends State<RankingPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("RANKING"),
    );
  }
}
