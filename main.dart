import 'package:flutter/material.dart';
import 'package:shoe_project/shoe.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      home:ShoeExample(),
      
   
           
    );
  }
}
