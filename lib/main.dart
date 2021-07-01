import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rider/Screens/HomeScreen.dart';
import 'package:rider/Screens/SigninScreen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(MyApp(),);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rider App',
      theme: ThemeData(
        primaryColor: Colors.green,
        fontFamily: 'Brand-Regular',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginScreen(),
    );
  }
}
