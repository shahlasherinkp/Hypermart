import 'package:flutter/material.dart';
import 'package:hypermart/mainpage/components/pdeals.dart';
import 'package:hypermart/mainpage/firstscreen.dart';
import 'package:hypermart/mainpage/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hypermart',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'poppins'
        
        
     
      ),
      home: FirstScreen(),
    );
  }
}

