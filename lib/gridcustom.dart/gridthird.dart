import 'package:flutter/material.dart';

class Gridthird extends StatelessWidget {
  const Gridthird({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 30,
        width: 40,
          decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(15),
          
          
        ),
        child: Stack(
          children: [
            Center(child: Image(image: AssetImage('assets/161-1615078_female-teacher-png-transparent-png-download-removebg-preview 1.png')))
          ],
        ),
      ),
    );
  }
}