import 'package:educationapp/screenpage.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
// import 'package:http/http.dart'as http;

class Hello extends StatefulWidget {
  const Hello({super.key});

  @override
  State<Hello> createState() => _HelloState();
}

class _HelloState extends State<Hello> {
  // Future<void>getdata()async{
  //   final response=await http.get()
  // }
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 192,
              width: 380,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 11, 78, 132),
                  borderRadius: BorderRadius.circular(30)),
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      'Hello,',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                    subtitle: Text(
                      'good morning,',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    trailing: CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          suffixText: 'All',
                          suffixStyle: TextStyle(color: Colors.black),
                          suffixIcon: Icon(Icons.arrow_drop_down),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25)),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Search'),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Explore categories',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'See all',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ],
            ),
            Flexible(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Screenpage()));
                      },
                      child: Container(
                        height: 163,
                        width: 153,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Image.asset('assets/image 8.png'),
                              ),
                              Text(
                                'Accounting ',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text('20 courses'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: Colors.white, boxShadow: []),
        child: SafeArea(
          child: GNav(
            rippleColor: Colors.grey,
            hoverColor: Colors.grey,
            gap: 8,
            activeColor: Colors.black,
            iconSize: 24,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            tabBackgroundColor: Colors.grey,
            color: Colors.black,
            tabs: [
              GButton(icon: Icons.home_filled, text: 'Home'),
              GButton(
                icon: Icons.favorite_outline,
                text: 'Likes',
              ),
              GButton(
                icon: Icons.search,
                text: 'Search',
              ),
              GButton(
                icon: Icons.person_outline,
                text: 'Profile',
              )
            ],
            selectedIndex: selectedindex,
            onTabChange: (value) {
              setState(() {
                selectedindex = value;
              });
            },
          ),
          bottom: true,
        ),
      ),
    );
  }
}
