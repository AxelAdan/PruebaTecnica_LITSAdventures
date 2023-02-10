import 'package:flutter/material.dart';
import 'package:lits_adventures/pages/ejercicio_tres_detalle.dart';

class EjercicioTres extends StatelessWidget {
  const EjercicioTres({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Navegación entre Pantallas con Valores')
        ),
        body: ListView.separated(
            padding: const EdgeInsets.all(8),
            itemCount: 100,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  margin: const EdgeInsets.all(20),
                  height: 50,
                  color: Colors.grey,
                  child: ListTile(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.grey, width: 0),
                        borderRadius: BorderRadius.circular(5)
                      ),
                      leading: Icon(Icons.remove),
                      title: Center(child: Text('${index + 1}', style: TextStyle(color: Colors.red))),
                      trailing: Icon(Icons.add),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => EjercicioTresDetalle(index: index)
                            )
                        );
                      }
                  )
              );
            },
            separatorBuilder: (BuildContext context, int index) => const Divider(),
        )
    );
  }
}
