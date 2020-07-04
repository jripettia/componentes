import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icono_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista(){

   //menuProvider.cargaData()
   return FutureBuilder(
     future: menuProvider.cargaData(),
     initialData: [],
     builder: (context, AsyncSnapshot<List<dynamic>> snapshot){
    
     return ListView(
      children: _listaItems( snapshot.data, context),
    );


    },
   );

   

  }


  List<Widget> _listaItems(List<dynamic> data, BuildContext context ){

    final List<Widget> opciones = [];

    data.forEach((opt){

      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: (){

          Navigator.pushNamed(context, opt['ruta']);

          //opcion para navegar por ventanas 
          //final route = MaterialPageRoute(
           // builder: (context) =>  AlertPage()
          //);

         // Navigator.push(context, route);

        },
      );

      opciones..add( widgetTemp )
              ..add(Divider());
    });

     return opciones;
  }

  List<Widget> _listaItemss(){

    return[
      ListTile( title: Text('Hola Mundo')),
      Divider(),
      ListTile( title: Text('Hola Mundo')),
      Divider(),
      ListTile( title: Text('Hola Mundo')),
    ];
  }
}