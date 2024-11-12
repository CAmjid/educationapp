import 'package:educationapp/addguardian.dart';
import 'package:flutter/material.dart';

class Fees extends StatelessWidget {
  const Fees({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  body: Container(
    height: double.infinity,
    width: double.infinity,
    child: Stack(
      children: [
        Positioned(child: Image(image: AssetImage('assets/Ornament.png'))),
        Positioned(child: Text('Fees',style: TextStyle(
          fontSize: 35,fontWeight: FontWeight.bold
        ),),top: 40,left: 30,),
         Positioned(child: Text('Skip',style: TextStyle(
           
          fontSize: 20
        ),),top: 20,right: 15,),
          Positioned(child: Text('Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit, sed do\neiusmod tempor incididunt dolore\nmagna aliqua',style: TextStyle(
           
          fontSize: 20,fontWeight: FontWeight.normal
        ),),top: 90,left: 30,),
        Positioned(child: CircleAvatar(
          radius: 15,
          backgroundColor: Colors.amber,
        ),top: 190,right: 20,),
         Positioned(child: CircleAvatar(
          radius: 15,
          backgroundColor: Colors.blue,
        ),top: 240,left: 30,),
        Positioned(child: Image.asset('assets/young-smiling-student-woman-white-background__1_-removebg-preview 1.png'),top: 340,right: 0,),
        Positioned(child: Center(child: Container(
          height: 50,
          width: 350,
          child: ElevatedButton(
            style: ButtonStyle(
              shape: WidgetStatePropertyAll(BeveledRectangleBorder(borderRadius: BorderRadius.circular(5))),
              backgroundColor: WidgetStatePropertyAll(const Color.fromARGB(255, 83, 66, 166))
            ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Addguardian()));
            }, child: Text('Next',style: TextStyle(
              color: Colors.white,
              fontSize: 20
            ),)))),top: 800,left: 30,),
            Positioned(child: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.red,
            ),top: 580,left: -30,)
      ],
    ),
  ),
    );
  }
}
