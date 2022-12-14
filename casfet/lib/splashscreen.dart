import 'dart:async';
import 'package:flutter/material.dart';
// import 'package:flutter_application_1/audio/lib/main.dart';
// import 'dart:async';
import 'package:casfet/splashscreen.dart';

void main() {
  runApp(MaterialApp(home: SplashScreen()));
}

class SplashScreen extends StatefulWidget {
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  void initState() {
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SplashScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/casfet-white.png',
              width: 250,
            ),
            SizedBox(
              height: 200,
              width: 200,
            ),
            Text(
              "powered by:",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 12.0,
              ),
            ),
            Image.asset(
              'assets/images/cs-white.png',
              width: 125,
            ),
          ],
        ),
      ),
    );
  }
}
