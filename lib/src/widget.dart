import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key, required this.home, required this.image})
      : super(key: key);
  final Widget home;
  final String image;
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => widget.home)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: widget.image != null
            ? Image.asset(widget.image)
            : CircularProgressIndicator(
                color: Colors.white,
              ),
      ),
    );
  }
}
