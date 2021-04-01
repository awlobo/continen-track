import 'package:flutter/material.dart';
import 'Keys.dart' as Keys;

class HistoryNavigator extends StatefulWidget {
  @override
  _HistoryNavigatorState createState() => _HistoryNavigatorState();
}

class _HistoryNavigatorState extends State<HistoryNavigator> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: Keys.historyNavigatorKey,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) {
              switch (settings.name) {
                case '/':
                  return HistoryPage();
                default:
                  return HistoryPage();
              }
            });
      },
    );
  }
}

class HistoryPage extends StatefulWidget {
  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("HISTORY"),
    );
  }
}
