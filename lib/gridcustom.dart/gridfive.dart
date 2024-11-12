import 'package:flutter/material.dart';

class Gridfive extends StatelessWidget {
  const Gridfive({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        width: 40,
          decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(15)
        ),
         child: Stack(
          children: [
            Center(child: Image(image: AssetImage('assets/handsome-businessman-suit-glasses-cross-arms-chest-look_176420-21750-removebg-preview 1.png'),height: double.infinity,))
          ],
        ),
        
      ),
    );
  }
}