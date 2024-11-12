import 'package:flutter/material.dart';

class Gridfirst extends StatelessWidget {
  const Gridfirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 40,
        width: 40,
        
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(15)
        ),
         child: Stack(
          children: [
            Center(child: Image(image: AssetImage('assets/portrait-asian-woman-teacher_1258-13821-removebg-preview 1 (1).png')))
          ],
        ),
      ),
    );
  }
}