
import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/pages/home_page.dart';
//import 'package:flutter_application_1/src/pages/home_temp.dart';//ligero cambio para no tener errores 

void main() => runApp(MyApp());//nombre de la app y el tipo void 
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false, //para no mostrar todo el baner de la app modificada 
      //home: HomPageTep(),
      home: Homepage(),
      );
  }
}