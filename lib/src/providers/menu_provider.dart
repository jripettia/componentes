import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider{

  List<dynamic> opciones = [];


  _MenuProvider(){
   // cargaData();
  }

  Future<List<dynamic>> cargaData() async{

    final rest = await rootBundle.loadString('data/menu_opts.json');

      Map dataMap = json.decode( rest );
      opciones = dataMap ['rutas'];
  
    return opciones;
  }

}

final menuProvider = new _MenuProvider();