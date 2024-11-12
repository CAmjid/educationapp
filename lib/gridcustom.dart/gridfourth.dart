import 'package:flutter/material.dart';

class Gridfourth extends StatelessWidget {
  const Gridfourth({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 40,
     
        decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(15)
      ),
       child: Stack(
          children: [
            Center(child: Image(image: AssetImage('assets/[removal 1.png')))
          ],
        ),
    );
  }
}
