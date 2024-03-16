import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:qrcode/login.dart';

class Reg extends StatefulWidget {
  const Reg({super.key});

  @override
  State<Reg> createState() => _MyAppState();
}

class _MyAppState extends State<Reg> {

  final _rollNoController=TextEditingController();
  final _nameController=TextEditingController();
  final _emailController=TextEditingController();
  final _passwordController=TextEditingController();



  void register() async{
    Uri uri=Uri.parse('https://scnner-web.onrender.com/api/register');
    var response=await http.post(uri,
    headers:<String,String>{
      'Content-Type':'application/json;charset=UTF-8'
    },

    body:jsonEncode({
      'name':_nameController.text,
      'email':_emailController.text,
      'rollno':_rollNoController.text,
      'password':_passwordController.text,

    }));

    var data=jsonDecode(response.body);
    print(data["message"]);

    print (response.statusCode);
    print(response.body);

    if(response.statusCode==200){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MyApp()),
      );

    }else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(data["message"])));
    }


    print(_rollNoController.text);
    print(_nameController.text);
    print(_emailController.text);
    print(_passwordController.text);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              controller:_rollNoController,
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
              controller: _nameController,
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
              controller: _emailController,
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
              controller: _passwordController,
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
            TextButton(onPressed: (){register();}, child:Text('register',style:TextStyle(color:Colors.white),)),
          ],
        ),
      ),
      );
  }
}