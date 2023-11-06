import 'package:flutter/material.dart';

class IntroOne extends StatelessWidget {
  const IntroOne({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.red[100],
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          
          children: [
            Image.asset(
              
              
              'assets/images/owl2.png',
              height: 300,),
              SizedBox(height: 50,),
            Text("Welcome to Learningo",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Text("Where Future Lies",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
          ],
          
        ),
      ), 
    );
  }
}