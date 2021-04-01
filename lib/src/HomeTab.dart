import 'package:continentracker/generated/l10n.dart';
import 'package:continentracker/src/SelectPlayersPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinbox/flutter_spinbox.dart';

import 'Keys.dart' as Keys;
import 'SettingsTab.dart';

class HomeNavigator extends StatefulWidget {
  @override
  _HomeNavigatorState createState() => _HomeNavigatorState();
}

class _HomeNavigatorState extends State<HomeNavigator> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: Keys.homeNavigatorKey,
      onGenerateRoute: (RouteSettings settings) {
        return PageRouteBuilder(
            settings: settings,
            pageBuilder: (context, animation, secondaryAnimation) {
              switch (settings.name) {
                case '/':
                  return HomeTab();
                case '/select_players':
                  return SelectPlayersPage();
                case '/settings':
                  return SettingsPage();
                default:
                  return HomeTab();
              }
            });
      },
    );
  }
}

class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  int finalNumPlayers = 2;

  numPlayersCallback(numPlayers) => finalNumPlayers = numPlayers;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppBar(
            title: Text(S.of(context).home_tab_title),
            actions: [
              IconButton(
                icon: Icon(Icons.settings),
                onPressed: () => Navigator.pushNamed(context, '/settings'),
              ),
            ],
          ),
          PlayersSpinner(numPlayersCallback),
          ConstrainedBox(
              constraints: BoxConstraints.tightFor(height: 50),
              child: ElevatedButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, '/select_players'),
                  child: Text("Start".toUpperCase())))
        ],
      ),
    );
  }
}

class PlayersSpinner extends StatefulWidget {
  final Function(int) numPlayersCallback;
  PlayersSpinner(this.numPlayersCallback);
  @override
  _PlayersSpinner createState() => _PlayersSpinner();
}

class _PlayersSpinner extends State<PlayersSpinner> {
  @override
  Widget build(BuildContext context) {
    return SpinBox(
        min: 2,
        max: 8,
        value: 2,
        spacing: 18,
        direction: Axis.vertical,
        textStyle: TextStyle(fontSize: 48),
        incrementIcon: Icon(Icons.keyboard_arrow_up, size: 64),
        decrementIcon: Icon(Icons.keyboard_arrow_down, size: 64),
        onChanged: (value) =>
            setState(() => widget.numPlayersCallback(value.toInt())),
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          contentPadding: const EdgeInsets.all(24),
        ));
  }
}
