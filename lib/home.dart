import 'package:flutter/material.dart';

class HomeDemo extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<HomeDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        color: Colors.blueGrey,
      ),
    );
  }
}
