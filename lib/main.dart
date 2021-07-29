
import 'package:flutter/material.dart';
import 'package:travlapplication/Nav.dart';

void main() {
  runApp(MyApp());
  
}

class MyApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Bottom Navigation',
      home: Nav(),
    );
  }
}
