import 'package:flutter/material.dart';
import 'package:lits_adventures/bottomNavigation/bottom_navigation.dart';
import 'package:lits_adventures/routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Prueba Técnica - Lits Adventures',
        home: HomePage()
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  BottomNavigation? myBottomNavigation;

  @override
  void initState() {
    myBottomNavigation = BottomNavigation(
      currentIndex: (i) {
        setState(() {
          index = i;
        });
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            bottomNavigationBar: myBottomNavigation,
            body: Routes(index: index)
        )
    );
  }
}
