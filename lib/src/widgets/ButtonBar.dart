import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonBarControl extends StatefulWidget {
  final Function(int) selectedIndexCallback;
  ButtonBarControl(this.selectedIndexCallback);

  @override
  _ButtonBarState createState() => _ButtonBarState();
}

class _ButtonBarState extends State<ButtonBarControl> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) => setState(() {
        _selectedIndex = index;
        widget.selectedIndexCallback(index);
      });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.blue[400],
      onTap: _onItemTapped,
      currentIndex: _selectedIndex,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.format_list_numbered),
          label: 'Ranking',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history),
          label: 'History',
        ),
      ],
    );
  }
}
