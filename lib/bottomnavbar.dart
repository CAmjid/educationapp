import 'package:educationapp/bottomcustom.dart/message.dart';
import 'package:educationapp/bottomcustom.dart/profile.dart';
import 'package:educationapp/bottomcustom.dart/search.dart';
import 'package:educationapp/hello.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Bottomnavbar extends StatefulWidget {
  const Bottomnavbar({super.key});

  @override
  State<Bottomnavbar> createState() => _BottomnavbarState();
}

class _BottomnavbarState extends State<Bottomnavbar> {
  int selectedIndex=0;
  List pages=[
  Hello(),
  Message(),
  Search(),
  Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
         bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
          
          ]
        ),
        child: SafeArea(child:GNav(
          rippleColor: Colors.grey,
          hoverColor: Colors.grey,
          gap: 8,
          activeColor: Colors.black,
          iconSize: 24,
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 12),
          tabBackgroundColor: Colors.grey,
          color: Colors.black,
          tabs: [
            GButton(icon:Icons.home_filled,text: 'Home'),
             GButton(icon:Icons.favorite_outline,text: 'Likes',),
              GButton(icon:Icons.search,text: 'Search',),
               GButton(icon:Icons.person_outline,text: 'Profile',)
               
        ],
        selectedIndex: selectedIndex,
        onTabChange: (value) {
          setState(() {
            selectedIndex=value;
          });
        },
        
        ) ,
        bottom: true,
        
        
        
        
        ),
        
        
      ),
    );
  }
}