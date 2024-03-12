import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:qrcode/login.dart';

void main() {
  runApp(const Qr());
}

class Qr extends StatefulWidget {
  const Qr({super.key});

  @override
  State<Qr> createState() => _QrState();
}

class _QrState extends State<Qr> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:MyApp(),
    );
  }
}

