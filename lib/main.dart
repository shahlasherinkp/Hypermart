import 'package:flutter/material.dart';
import 'package:hypermart/mainpage/firstscreen.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
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
      home: const FirstScreen(),
    );
  }
}

