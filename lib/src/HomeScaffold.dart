import 'package:continentracker/src/HistoryTab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'HomeTab.dart';
import 'RankingTab.dart';
import 'SettingsTab.dart';
import 'widgets/ButtonBar.dart';

import 'Keys.dart' as Keys;

class HomeScaffold extends StatefulWidget {
  @override
  _HomeScaffoldState createState() => _HomeScaffoldState();
}

class _HomeScaffoldState extends State<HomeScaffold> {
  int _selectedIndex = 1;

  selectedIndexCallback(selectedIndex) =>
      setState(() => _selectedIndex = selectedIndex);

  static List<Widget> _widgetOptions = [
    RankingNavigator(),
    HomeNavigator(),
    HistoryNavigator(),
    SettingsNavigator()
  ];

  List<GlobalKey<NavigatorState>> _navigatorKeys = [
    Keys.homeNavigatorKey,
    Keys.settingsNavigatorKey,
    Keys.rankingNavigatorKey,
    Keys.historyNavigatorKey,
  ];

  Future<bool> _systemBackButtonPressed() {
    if (_navigatorKeys[_selectedIndex].currentState!.canPop()) {
      _navigatorKeys[_selectedIndex]
          .currentState!
          .pop(_navigatorKeys[_selectedIndex].currentContext);
    } else {
      SystemChannels.platform.invokeMethod<void>('SystemNavigator.pop');
    }
    return Future<bool>.value(true);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _systemBackButtonPressed,
      child: Scaffold(
          body: SafeArea(
              top: false,
              child: IndexedStack(
                index: _selectedIndex,
                children: _widgetOptions,
              )),
          bottomNavigationBar: ButtonBarControl(selectedIndexCallback)),
    );
  }
}
