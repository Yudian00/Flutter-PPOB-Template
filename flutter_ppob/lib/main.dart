import 'package:flutter/material.dart';
import 'package:flutter_ppob/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // main color #1c86fc
        primaryColor: Colors.blue,
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
