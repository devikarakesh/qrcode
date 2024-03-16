import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qrcode/button.dart';
import 'package:qrcode/image.dart';
import 'package:qrcode/profile.dart';
class Code extends StatefulWidget {
  const Code({super.key});

  @override
  State<Code> createState() => _CodeState();
}

class _CodeState extends State<Code> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Colors.teal,
        body:Center(
          child:Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              CircleAvatar(radius:70,child:Icon(Icons.person,size:70),),
              QrImageView(
                data: '1234567890',
                version: QrVersions.auto,
                size: 200.0,
                backgroundColor:Colors.white,
              ),
              SizedBox(height:30,),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (context) => Button()),);
                },
                child: Text('SCAN. '),
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white)),
                  primary: Colors.white,
                ),
              ),
              /*SizedBox(height:30,),
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
              ),*/

            ],
          ),
        ),
      );

  }
}

