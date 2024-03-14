import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        backgroundColor:Colors.teal,
        body:Center(
        child:Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
          CircleAvatar(radius:70,
          backgroundImage: NetworkImage('https://grangettos.com/cdn/shop/articles/IMG_2019_2000x.jpg?v=1644538016'),
          ),
            Text('DEVIKA',style: TextStyle(color:Colors.white,fontSize:20),),
            SizedBox(height:10,),
            Text('Flutter developer',),
            SizedBox(height:20,),
            TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 20.0),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.white),
                ),
               // hintText: 'enter your roll no',
                filled:true,
                fillColor:Colors.white,
              ),
            ),
            SizedBox(height:20,),
            TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 20.0),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.white),
                ),
               // hintText: 'enter your roll no',
                filled: true,
                fillColor:Colors.white,
              ),
            ),
        ],
      ),
    ),
      ),
    );

  }
}
