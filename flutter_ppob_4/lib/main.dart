import 'package:flutter/material.dart';
import 'package:flutter_ppob_4/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF01B993),
        primarySwatch: Colors.green,
      ),
      home: SplashScreen(),
    );
  }
}
