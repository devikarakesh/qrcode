
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:qrcode/code.dart';
import 'package:qrcode/reg.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final rollNoController=TextEditingController();
  final passwordController=TextEditingController();




void login ()async{
    Uri uri = Uri.parse('https://scnner-web.onrender.com/api/login');
    var response = await http.post(uri,
        headers: <String, String>{
          'Content-Type':'application/json;charset=UTF-8'
        },

        body: jsonEncode({
          'rollno': rollNoController.text,
          'password': passwordController.text,
        }));

    var ddata = jsonDecode(response.body);
    print(ddata["message"]);
    print(response.statusCode);
    print(response.body);

    if (response.statusCode == 200) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Code()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("failed")));
    }


    print(rollNoController.text);
    print(passwordController.text);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('login',
                  style: TextStyle(color: Colors.white, fontSize: 25)),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: rollNoController,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 20.0),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.white),
                  ),
                  hintText: 'enter your roll no',
                  hintStyle: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              TextField(
                controller: passwordController,
                  decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 20.0),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.white),
                ),
                hintText: 'enter your password',
                hintStyle: TextStyle(color: Colors.white),
              )),
              SizedBox(
                height: 25,
              ),
              TextButton(
                onPressed: () {
                  login();
                  /*Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Code()),
                );*/},
                child: Text('login'),
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white)),
                  primary: Colors.white,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Reg()),
                  );
                },
                child: Text('dONT HAVE AN ACCOUNT?REGISTER '),
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white)),
                  primary: Colors.white,
                ),
              ),
            ],
          ),
        ),
      );

  }
}
