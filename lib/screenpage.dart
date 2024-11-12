import 'package:educationapp/experts.dart';
import 'package:educationapp/gridcustom.dart/gridfirst.dart';
import 'package:educationapp/gridcustom.dart/gridfive.dart';
import 'package:educationapp/gridcustom.dart/gridfourth.dart';
import 'package:educationapp/gridcustom.dart/gridscond.dart';
import 'package:educationapp/gridcustom.dart/gridthird.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Screenpage extends StatefulWidget {
  const Screenpage({super.key});

  @override
  State<Screenpage> createState() => _ScreenpageState();
}

class _ScreenpageState extends State<Screenpage> {
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           
          // Container(
          //   height: 600,
          //   width: double.infinity,
          //   child: Stack(
          //     children: [
          //       Positioned(child: Container(
          //         height: 100,
          //         width: 100,s
          //         color: color,
          //       ))
          //     ],
          //   ),
          // )
             Expanded(
         child: StaggeredGrid.count(
           crossAxisCount:2 ,
           mainAxisSpacing: 25,
           crossAxisSpacing: 25,
           children: const [
             StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: Gridfirst(),
             ),
             StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1.5,
          child: Gridscond(),
             ),
             StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 0.8,
        
          child: Gridthird(),
             ),
             StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: Gridfourth(),
             ),
             StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: Gridfive(),
             ),
           ]
            
         ),
             ),
             Text('True masters in\ntheir fields\nready to teach you',style: TextStyle(
              fontSize: 30,fontWeight: FontWeight.bold
             ),),
             SizedBox(
              height: 30,
             ),

            
           Container(
            height: 50,
            width: 180,
             child: ElevatedButton(
        style: ButtonStyle(
          shape: WidgetStatePropertyAll(BeveledRectangleBorder(borderRadius: BorderRadius.circular(5))),
          backgroundColor: WidgetStatePropertyAll(Colors.blue)
        ),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Experts()));
        }, child:Center(
        child: Text('Meet expert',style: TextStyle(
        color: Colors.white,fontSize: 20
        ),),
             ) ),
           ),
           SizedBox(
            height: 60,
           )
          ]
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
            selectedIndex: selectedIndex,
            onTabChange: (value) {
              setState(() {
                selectedIndex = value;
              });
            },
          ),
          bottom: true,
        ),
      ),
    );
  }
}