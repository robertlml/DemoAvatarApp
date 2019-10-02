
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomePageTemp extends StatelessWidget {
  
final opciones = ['Uno','Dos','Tres','Cuatro'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
        ),
        body: ListView(
          children: _crearItemscorto(),
        ),
        );
  }

  List<Widget> _crearItems(){

  List<Widget> lista = new List<Widget>();

    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
        );  
      //  lista.add(tempWidget);
      //  lista.add(Divider());

      lista..add(tempWidget)
           ..add(Divider(color: Colors.lightBlueAccent, height: 20.0));
        
  }
  return lista;
}
  List<Widget> _crearItemscorto(){
    return  opciones.map((item){

      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item = '!'),
            subtitle: Text('subtitle') , 
            leading: Icon(Icons.add_a_photo),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){},
          ),
          Divider(color: Colors.brown,height: 25.0),
        ],
      );

    }).toList();
  }



}


