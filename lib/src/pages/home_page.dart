
import 'package:componentes/src/providers/menu_providers.dart';
import 'package:componentes/src/utils/icono_string_util.dart';
import  'package:flutter/material.dart';



 
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
        appBar: AppBar(
          title: Text('COMPONENTES'),
        ),
        body: _lista(),
              );            
          }
        
    Widget  _lista() {
     
    //  menuprovider.cargarData()
      return FutureBuilder(
        future: menuprovider.cargarData(),
       // initialData: [],
        builder: ( context, AsyncSnapshot<List<dynamic>> snapshot) {

            print(snapshot.data);

         return ListView(
          children: _listaItems(snapshot.data, context),
          );        
        },
      );
    
    }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {

  final List<Widget> opciones = [];

  data.forEach((opt){

    final widgettemp = ListTile(
      title: Text(opt['texto']),
      leading: getIcon(opt['icon']),
      trailing: Icon(Icons.keyboard_arrow_right, color: Colors.greenAccent),
      onTap: (){

       Navigator.pushNamed(context, opt['ruta']);   

       //   final route = MaterialPageRoute(
       //   builder: (context) => AlertPage()          
      //  );          
       //   Navigator.push(context, route);


      },      
    );
     opciones..add(widgettemp)
            ..add(Divider());
  });
  
  return opciones;
  }


}