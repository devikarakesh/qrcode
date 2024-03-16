import 'package:flutter/material.dart';
import 'package:qrcode/code.dart';
import 'package:qrcode/reg.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
                onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Code()),
                );},
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
