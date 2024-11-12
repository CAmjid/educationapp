import 'package:educationapp/hello.dart';
import 'package:flutter/material.dart';

class Addguardian extends StatelessWidget {
  const Addguardian({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.arrow_back,size: 24,),
            SizedBox(
              height: 20,
            ),
            Text('Add a gurdian',style: TextStyle(
              fontSize: 24,fontWeight: FontWeight.bold
            ),),
            SizedBox(
              height: 20,
            ),
            Text('Give access to another guardian',style: TextStyle(
              fontSize: 14,color: Colors.blue
            ),),
            SizedBox(
              height: 30,
            ),
            Text('Mobile',style: TextStyle(
              fontSize: 16
            ),),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.smartphone),
                labelText: 'Phone Number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
                
              ),

            ),
            SizedBox(
              height: 30,
            ),
            Text('Confirm mobile',style: TextStyle(
              fontSize: 16
            ),),
               SizedBox(
              height: 10,
            ),
               TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.smartphone),
                labelText: 'Phone Number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
                
              ),

            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Hello()));
              },
              child: Container(
                height: 50,
                width: 380,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 11, 50, 116),
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Center(
                  child: Text('Give Access',style: TextStyle(
                    color: Colors.white,fontSize: 20
                  ),),
                ),
              ),
            ),

          ],
        ),
      )
    );
  }
}