import 'package:flutter/material.dart';
import 'package:shopapp_1/Views/First_Screen.dart';

class RootApp extends StatefulWidget{
  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    );
  }
}