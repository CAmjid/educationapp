import 'package:flutter/material.dart';

class Gridscond extends StatelessWidget {
  const Gridscond({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 80,
          width: 40,
            decoration: BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.circular(15)
          ),
           child: Stack(
          children: [
            Center(child: Image(image: AssetImage('assets/portrait-young-male-teacher-light-background_99433-2422-removebg-preview 1 (1).png'),height: double.infinity,width: double.infinity,))
          ],
        ),
        ),
      ),
    );
  }
}