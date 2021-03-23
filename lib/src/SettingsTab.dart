import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

import 'Keys.dart' as Keys;
import 'languages_screen.dart';

class SettingsNavigator extends StatefulWidget {
  @override
  _SettingsNavigatorState createState() => _SettingsNavigatorState();
}

class _SettingsNavigatorState extends State<SettingsNavigator> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: Keys.settingsNavigatorKey,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) {
              switch (settings.name) {
                case '/':
                  return SettingsPage();
                default:
                  return SettingsPage();
              }
            });
      },
    );
  }
}

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: SettingsList(
        contentPadding: EdgeInsets.symmetric(vertical: 20),
        sections: [
          SettingsSection(
            title: 'Reset progress',
            tiles: [
              SettingsTile(
                title: 'Delete all matches',
                subtitle: 'Production',
                leading: Icon(Icons.delete_forever),
              ),
              SettingsTile(
                title: 'Delete all players',
                subtitle: 'Production',
                leading: Icon(Icons.delete_forever),
              ),
            ],
          ),
          SettingsSection(
            title: 'Languages',
            tiles: [
              SettingsTile(
                title: 'Language',
                subtitle: 'English', // TODO - Change to current language
                leading: Icon(Icons.language),
                onPressed: (context) {
                  Navigator.of(context).push(PageRouteBuilder(
                    pageBuilder: (_, __, ___) => LanguagesScreen(),
                  ));
                },
              ),
            ],
          ),
          SettingsSection(
            title: 'Style',
            tiles: [
              SettingsTile.switchTile(
                title: 'Dark mode',
                leading: Icon(Icons.nightlight_round),
                switchValue: true, // TODO - check if dark theme or not
                onToggle: (bool value) {},
              ),
            ],
          ),
          CustomSection(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 22, bottom: 8),
                ),
                Text(
                  'Version: 0.1.0',
                  style: TextStyle(color: Color(0xFF777777)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
