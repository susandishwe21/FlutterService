import 'package:flutter/material.dart';
import 'package:flutter_service/counter_view.dart';
import 'package:flutter_service/service_locator.dart';

void main() {
  setupServiceLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: CounterScreen(),
    );
  }

}