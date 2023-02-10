import 'package:flutter/material.dart';

class EjercicioTresDetalle extends StatelessWidget {
  const EjercicioTresDetalle({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Ejercicio Tres Detalle')
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('El valor del elemento de la lista de la primera pantalla es: ${index + 1}', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, letterSpacing: 1.5), textAlign: TextAlign.center),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('Regresar'))
                ]
            )
        )
    );
  }
}
