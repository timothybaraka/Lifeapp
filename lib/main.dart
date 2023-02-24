// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:firstapp/views/login.dart';

void main() => runApp(const MyApplication());

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override 
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}



 


















// 
