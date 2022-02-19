import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen(
      {Key? key, required this.home, this.color, required this.image})
      : super(key: key);
  final Widget home;
  final String image;
  final Color? color;
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => widget.home)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.color ?? Colors.green,
      body: Center(
        child: widget.image != ''
            ? Image.asset(widget.image)
            : const CircularProgressIndicator(
                color: Colors.white,
              ),
      ),
    );
  }
}
