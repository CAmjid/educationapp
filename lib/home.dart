import 'package:educationapp/fees.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              child: CircleAvatar(
                radius: 80,
                backgroundColor: Colors.amber,
              ),
              top: 13,
              right: -90,
            ),
            Positioned(
              child: CircleAvatar(
                radius: 40,
                backgroundColor: const Color.fromARGB(172, 38, 18, 167),
              ),
              top: 80,
              left: -40,
            ),
            Positioned(
              child: CircleAvatar(
                radius: 12,
                backgroundColor: Colors.amber,
              ),
              top: 140,
              left: 80,
            ),
            Positioned(
              child: CircleAvatar(
                radius: 80,
                backgroundColor: const Color.fromARGB(222, 234, 25, 10),
              ),
              top: 250,
              left: 60,
            ),
            Positioned(
              child: Image(
                  image: AssetImage(
                      'assets/woman-with-laptop-computer-sitting-floor-isolated-white-removebg-preview (1) 1 (1).png')),
              top: 40,
              left: 5,
            ),
            Positioned(
              child: CircleAvatar(
                radius: 12,
                backgroundColor: Colors.blue,
              ),
              top: 380,
              right: 40,
            ),
            Positioned(
              child: Text(
                'Welcome To\n   Learner',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              top: 430,
              left: 80,
            ),
            Positioned(
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor\n      incididunt dolore magna aliqua',
                style: TextStyle(fontSize: 14),
              ),
              top: 550,
              left: 60,
            ),
            Positioned(
                child: Center(
              child: Container(
                height: 50,
                width: 350,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(const Color.fromARGB(255, 12, 14, 152)),
                    shape: WidgetStatePropertyAll(BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)))
                  ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Fees()));
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Center(
                          child: Text('Get Started',style: TextStyle(
                            color: Colors.white,fontSize: 15
                          ),),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 4, right: 0),
                          child: Icon(
                            Icons.arrow_forward_ios,color: Colors.white,size: 15,
                          ),
                        ),
                      ],
                    )),
              ),
            ),top: 650,left: 25,)
          ],
        ),
      ),
    );
  }
}
