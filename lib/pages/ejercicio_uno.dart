import 'package:flutter/material.dart';

class EjercicioUno extends StatelessWidget {
  const EjercicioUno({Key? key}) : super(key: key);

  static const TextStyle optionStyle = TextStyle(fontSize: 15, fontWeight: FontWeight.bold, letterSpacing: 1.5);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
                title: Text('Área y Perímetro de un Círculo')
            ),
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('¡Hola! \n En este primer ejercicio, se calcula el area y perimetro de un circulo. \n A continuación, ingresa el diametro del circulo:', style: optionStyle, textAlign: TextAlign.center),
                      TextField(
                          keyboardType: TextInputType.number,
                          style: const TextStyle(fontSize: 15),
                          decoration: const InputDecoration(
                              hintText: 'Diametro del circulo...'
                          ),
                          onSubmitted: (String value) {
                            double diametro = double.parse(value);
                            double radio = diametro / 2;
                            double area = 3.1416 * (radio * radio);
                            double perimetro = 2 * 3.1416 * radio;

                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                      title: Text('Resultado'),
                                      content: Text('El area es: $area \nEl perimetro es: $perimetro'),
                                      actions: [
                                        TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                              },
                                            child: Text('Cerrar'))
                                      ]
                                  );
                                }
                            );
                          }
                      )
                    ]
                )
            )
        )
    );
  }
}
