
// ignore: unused_import
import 'dart:ui';

import 'package:arya/utils/colors.dart';
import 'package:flutter/material.dart';


class Splash_Screen extends StatelessWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Arya-app'),centerTitle: true,backgroundColor: Colors.red,),
      body:Container(color: Constants.Orange),
    );
  }
}
