
import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
 
 List<dynamic> opciones = [];


 _MenuProvider(){
   cargarData();
 }

  Future<List<dynamic>> cargarData() async {

  final resp = await rootBundle.loadString('data/menu_opts.json');
    
      Map datamap = json.decode(resp);
  //    print(datamap['rutas']);
      opciones = datamap['rutas'];

      return opciones;

    }
}



final menuprovider = new _MenuProvider();