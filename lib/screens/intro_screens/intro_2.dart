import 'package:flutter/material.dart';

class IntroTwo extends StatelessWidget {
  const IntroTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final Imageurl =
        "https://3.bp.blogspot.com/-BvVKASrlSEA/W-3fo6rwFMI/AAAAAAAAMJs/onEbfavp0Hw4A4P9uK-H-XCaSi3KC1VaQCLcBGAs/s1600/robot%2B1.png";
    return Scaffold(
      backgroundColor: Colors.red[100],
      body: Center(
        child: Column(
          children: [
            Image.network(
              Imageurl,
              height: 300,
            ),
             SizedBox(
              height: 50,
            ),
            Container(
              height: 300,
              width: 250,
              child: Column(children: [
                Text("Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi.")
              ],),
            )
          ]
        ),
      ),
    );
  }
}
