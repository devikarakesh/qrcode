import 'package:flutter/material.dart';

class Reg extends StatefulWidget {
  const Reg({super.key});

  @override
  State<Reg> createState() => _MyAppState();
}

class _MyAppState extends State<Reg> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        backgroundColor:Colors.teal,
        appBar:AppBar(
          centerTitle:true,
        backgroundColor:Colors.teal,
        title:Text(
        'REGISTRATION',
          style:TextStyle(
            fontSize:29,
            color:Colors.white,


          ),
          ),

        ),
        body:Center(
        child:Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            TextField(
              decoration:InputDecoration(
                contentPadding:EdgeInsets.symmetric(vertical:20.0),
                enabledBorder:OutlineInputBorder(
                  borderSide:BorderSide(width:3,color:Colors.white),
                ),
                hintText:'enter your name',
                hintStyle:TextStyle(color:Colors.white),

              ),

            ),
            SizedBox(height:30,),
            TextField(
              decoration:InputDecoration(
                contentPadding:EdgeInsets.symmetric(vertical:20.0),
                enabledBorder:OutlineInputBorder(
                  borderSide:BorderSide(width:3,color:Colors.white),
                ),
                hintText:'enter your roll no',
                hintStyle:TextStyle(color:Colors.white),

              ),

            ),
            SizedBox(height:30,),
            TextField(
              decoration:InputDecoration(
                contentPadding:EdgeInsets.symmetric(vertical:20.0),
                enabledBorder:OutlineInputBorder(
                  borderSide:BorderSide(width:3,color:Colors.white),
                ),
                hintText:'enter your email',
                hintStyle:TextStyle(color:Colors.white),

              ),

            ),
            SizedBox(height:30,),
            TextField(
              decoration:InputDecoration(
                contentPadding:EdgeInsets.symmetric(vertical:20.0),
                enabledBorder:OutlineInputBorder(
                  borderSide:BorderSide(width:3,color:Colors.white),
                ),
                hintText:'enter your password',
                hintStyle:TextStyle(color:Colors.white),

              ),

            ),
            SizedBox(height:30,),
            TextButton(onPressed: (){}, child:Text('register',style:TextStyle(color:Colors.white),)),
          ],
        ),
      ),
      ),
    );
  }
}