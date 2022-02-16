import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen(this.color, this.image, {Key? key, required this.home})
      : super(key: key);
  final Widget home;
  final String image;
  final Color color;
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
      backgroundColor: widget.color != null ? widget.color : Colors.green,
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
