import 'package:flutter/material.dart';//impotacion de objeto dart 

class HomPageTep extends StatelessWidget {
  final opciones = ['Scp-001','Scp-002','Scp-003','Scp-004','Scp-3520-a'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('componentes temporal'),
      ),
      body: ListView(
        //children: _crearItems(),
        children:_crearItemsVerCorta(),
      ),
    );
  }
// crear iteams de app de forma manual poco eficas para tiempos pero mejor para la berificasion de archivos nesesarios
  /*List<Widget> _crearItems(){
    List<Widget> lista = new List<Widget>();
    for(String opt in opciones){
      final temWidget = ListTile (
        title: Text(opt),
      );
      lista..add(temWidget)//Uso del metodo cascada 
          ..add(Divider());
    }
    return lista;
  }
  */

  //Crear items cortos 
  List<Widget> _crearItemsVerCorta(){
    return opciones.map((item){
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('Clasificado_Proibido_el_acceso_a_miembros_de_nivel_3_o_inferior'),
            leading: Icon(Icons.accessibility_new) ,
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){},
          ),
          Divider(),
        ],
      ); 
    }).toList();
  }
}