import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  final Function currentIndex;

  const BottomNavigation({Key? key, required this.currentIndex}) : super(key: key);

  @override
  _BottomNavigation createState() => _BottomNavigation();
}

class _BottomNavigation extends State<BottomNavigation> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: index,
        onTap: (int i) {
          setState(() {
            index = i;

            widget.currentIndex(i);
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        iconSize: 25.0,
        selectedFontSize: 14.0,
        unselectedFontSize: 12.0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.circle),
            label: 'Ejercicio 1'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money_sharp),
            label: 'Ejercicio 2'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.format_list_numbered_rounded),
            label: 'Ejercicio 3'
          )
        ]
    );
  }
}
