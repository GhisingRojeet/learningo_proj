import 'package:flutter/material.dart';
import 'package:learningo/screens/homeScreen/homeScreen.dart';
import 'package:learningo/screens/intro_screens/intro_1.dart';
import 'package:learningo/screens/intro_screens/intro_2.dart';
import 'package:learningo/screens/intro_screens/intro_3.dart';
import 'package:learningo/screens/intro_screens/intro_4.dart';
import 'package:learningo/screens/intro_screens/intro_5.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  //creating bool if we are on last page or not
  bool onLastPage = false;
  PageController _controller = new PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: TextButton(
            onPressed: () {
              _controller.jumpToPage(4);
            },
            child: Text(
              "SKIP",
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
          ),
          backgroundColor: Colors.red[100],
          elevation: 0,
        ),
        body: Stack(children: [
          PageView(
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 4);
              });
            },
            controller: _controller,
            children: [
              IntroOne(),
              IntroTwo(),
              IntoThree(),
              IntoFour(),
              IntroFive()
            ],
          ),
          Container(
              alignment: Alignment(0, 0.75),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                

                  Container(
                    height: 30,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                    )
                    
                  ),
                  SmoothPageIndicator(controller: _controller, count: 5),
                  // SizedBox(width: 50,),

                  //Creating next and done button
                  onLastPage
                      ? Container(
                          height: 30,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Colors.cyan[500],
                              borderRadius: BorderRadius.circular(4)),
                          child: Center(
                              child: InkWell(
                                  onTap: () {
                                    Navigator.pushAndRemoveUntil(context,
                                        MaterialPageRoute(
                                            builder: (context) {
                                      return HomeScreen();
                                    }), (route) => false);
                                  },
                                  child: Text("DONE"))))
                      : Container(
                          height: 30,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Colors.cyan[500],
                              borderRadius: BorderRadius.circular(4)),
                          child: Center(
                              child: InkWell(
                                  onTap: () {
                                    _controller.nextPage(
                                        duration:
                                            Duration(milliseconds: 500),
                                        curve: Curves.easeIn);
                                  },
                                  child: Text("NEXT"))))
                ],
              ))
        ]));
  }
}
