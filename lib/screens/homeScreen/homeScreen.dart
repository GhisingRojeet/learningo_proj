import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        
        backgroundColor: Colors.red[500],
        title: Text('Welcome To Learningo'),) ,
      body: Container(color: Colors.red[300],),
      drawer: Drawer(),
    );
  }
}