import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pringgosadventure/theme.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushNamed(context, '/sign-in'),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Center(
        child: Container(
          width: 150,
          height: 170,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/image_splash3.png'))),
        ),
      ),
    );
  }
}
