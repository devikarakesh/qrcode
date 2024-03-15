import 'package:flutter/material.dart';
import 'package:qrcode/profile.dart';

class Button extends StatefulWidget {
  const Button({super.key});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        backgroundColor:Colors.teal,
        body:Center(
         child:Column(
           mainAxisAlignment:MainAxisAlignment.center,
           children: [
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
             SizedBox(height:25,),
             TextButton(
               onPressed: () {
                 Navigator.push(
                   context,
                   MaterialPageRoute(
                       builder: (context) => Profile()),);
               },
               child: Text('PROFILE'),
               style: TextButton.styleFrom(
                 shape: RoundedRectangleBorder(
                     side: BorderSide(color: Colors.white)),
                 primary: Colors.white,
               ),
             ),
           ],
         ),
        ),
      ),
    );
  }
}
