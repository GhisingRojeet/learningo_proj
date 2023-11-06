import 'package:flutter/material.dart';

class IntroFive extends StatelessWidget {
  const IntroFive({super.key});

  @override
  Widget build(BuildContext context) {
    final url = "https://cdni.iconscout.com/illustration/premium/thumb/online-education-app-5684898-4737136.png?f=webp";
    return Scaffold(
      backgroundColor: Colors.red[100],
      body: Center(
        child: Column(
          children: [
            Image.network(
              url,
              
              height: 300,
            ),
            SizedBox(
              height: 20,
            ),
           Container(
              height: 300,
              width: 250,
              child: Column(children: [
                Text("Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi.")
              ],),
            )
          ],
        ),
      ),
    );
  }
}
