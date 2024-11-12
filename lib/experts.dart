import 'package:flutter/material.dart';

class Experts extends StatefulWidget {
  const Experts({super.key});

  @override
  State<Experts> createState() => _ExpertsState();
}

class _ExpertsState extends State<Experts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      actions: [
        Icon(Icons.search)
      ],
    ),
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(
          color: Colors.grey,
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/Ellipse.png'),
          ),
          title: Text('Lucas Wilson'),
          subtitle: Text('Thomas Jefferson High School ',style: TextStyle(
            color: Colors.grey
          ),),
          trailing: CircleAvatar(
            backgroundColor: const Color.fromARGB(255, 41, 8, 126),
            child: Icon(Icons.repeat,color: Colors.white,),
          ),
        ),
        Divider(
          color: Colors.grey,
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text('Staff available for Lucas Wilson',style: TextStyle(
            color: const Color.fromARGB(255, 32, 16, 201),fontSize: 16,fontWeight: FontWeight.bold
          ),),
        ),
        Divider(
          color: Colors.grey,
        ),
       Expanded(
         child: ListView.builder(itemCount: 6,itemBuilder: (context, index) {
           return ListTile(
            
             leading: CircleAvatar(
              backgroundImage: AssetImage('assets/40px.png'),
              
             ),
             title: Text('Henry Itondo'),
             subtitle: Text('Math Teacher'),
             
             trailing: Icon(Icons.phone_outlined,color: const Color.fromARGB(255, 13, 8, 116),size: 25,),
             
           );
           
         },),
         
       ),
       Divider(
        color: Colors.grey,
       )
      ],
    ),
    );
  }
}