import 'package:flutter/material.dart';

class SelectPlayersPage extends StatefulWidget {
  @override
  _SelectPlayersPageState createState() => _SelectPlayersPageState();
}

class _SelectPlayersPageState extends State<SelectPlayersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SelectPlayersBody());
  }
}

class SelectPlayersBody extends StatefulWidget {
  @override
  _SelectPlayersBodyState createState() => _SelectPlayersBodyState();
}

class _SelectPlayersBodyState extends State<SelectPlayersBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          title: Text("Books 2"),
        ),
        Text("Hola")
      ],
    );
  }
}
