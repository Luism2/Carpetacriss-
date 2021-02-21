//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/providers/menu_provider.dart';
import 'package:flutter_application_1/src/utils/icono_string_util.dart';
class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Componentes vercion 2')
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    //print(menuProvider.opciones);
    /*menuProvider.cargarData().then((opciones){
      print('_lista: ');
      print(opciones);
    });
    return ListView(
      children: _listaItems(),
    );*/
  
  return FutureBuilder(
    future: menuProvider.cargarData(),
    initialData: [],
    builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapShot){
      print('builder: ');
      print(snapShot.data);
      return ListView(
        children: _listaItems(snapShot.data),
      );
    },
   );
  }
 List<Widget> _listaItems(List<dynamic> data) {
  /*return[
    ListTile(title: Text('HOla')
    ),
    Divider(),
    ListTile(title: Text('HOla')
    ),
    Divider(),
    ListTile(title: Text('HOla')
    ),
    Divider(),
    ListTile(title: Text('HOla')
    ),
    Divider(),
    ListTile(title: Text('HOla')
    ),
    Divider(),
    ListTile(title: Text('HOla')
    ),
  ];*/
   final List<Widget> opciones = [];
   data.forEach( (opt){
      final widgetTemp = ListTile(
       title: Text(opt['texto']),
       leading: getIcon(opt['icon']),
       trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
       onTap:(){},
       );
       opciones..add(widgetTemp)
               ..add(Divider());
    });
    return opciones;
  }
}