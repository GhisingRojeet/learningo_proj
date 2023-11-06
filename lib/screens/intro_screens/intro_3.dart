import 'package:flutter/material.dart';

class IntoThree extends StatelessWidget {
  const IntoThree({super.key});

  @override
  Widget build(BuildContext context) {
    final url = "https://www.growthengineering.co.uk/wp-content/uploads/2022/12/Superhero-Gamer_TS-01.png";
    return Scaffold(
      backgroundColor: Colors.red[100],
      body: Center(
        child: Column(
          children: [
            Image.network(url,height: 300,),
              SizedBox(height: 50,),
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
