import 'package:flutter/material.dart';

class EjercicioDos extends StatelessWidget {
  const EjercicioDos({Key? key}) : super(key: key);

  static const TextStyle optionStyle = TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.bold,
      letterSpacing: 1.5
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
                title: Text('Cálculo de Salario Semanal')
            ),
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('¡Hola de nuevo! \n En este segundo ejercicio, se calcula tu salario de acuerdo con las horas trabajadas en la semana. \n Ten en cuenta que la hora se paga en 10, y las horas extras en 15. \n Estas horas extras son pagadas si trabajaste más de 40 horas. \n Para saber cuánto se te pagara, a continuación, ingresa el número de horas trabajadas en la semana:', style: optionStyle, textAlign: TextAlign.center),
                      TextField(
                          keyboardType: TextInputType.number,
                          style: const TextStyle(fontSize: 15),
                          decoration: const InputDecoration(
                              hintText: 'Horas trabajadas en la semana...'
                          ),
                          onSubmitted: (String value) {
                            double salario = 0;
                            double horas = double.parse(value);

                            if (horas > 40) {
                              double horasExtras = horas - 40;
                              salario = (40 * 10) + (horasExtras * 15);
                            } else {
                              salario = horas * 10;
                            }

                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                      title: Text('Resultado'),
                                      content: Text('Tu salario es: $salario'),
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
