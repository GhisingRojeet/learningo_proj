import 'package:flutter/material.dart';

class IntoFour extends StatelessWidget {
  const IntoFour({super.key});

  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://cdni.iconscout.com/illustration/premium/thumb/student-learning-on-smartphone-using-educational-app-4468687-3718512.png?f=webp";
    return Scaffold(
      backgroundColor: Colors.red[100],
      body: Center(
        child: Column(
          children: [
            Image.network (
              imageUrl,
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
