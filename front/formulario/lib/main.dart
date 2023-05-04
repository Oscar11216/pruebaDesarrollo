import 'package:flutter/material.dart';
import 'package:formulario/src/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key key }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Prueba italentt',
      initialRoute: 'home',
      routes:{
        // ignore: prefer_const_constructors
        'home': (BuildContext context) => HomePage()
      } ,
    );
  }
}