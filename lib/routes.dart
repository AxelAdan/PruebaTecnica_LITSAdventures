import 'package:flutter/material.dart';
import 'package:lits_adventures/pages/ejercicio_dos.dart';
import 'package:lits_adventures/pages/ejercicio_tres.dart';
import 'package:lits_adventures/pages/ejercicio_uno.dart';

class Routes extends StatelessWidget {
  final int index;
  const Routes({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      const EjercicioUno(),
      const EjercicioDos(),
      const EjercicioTres(),
    ];

    return pages[index];
  }
}
