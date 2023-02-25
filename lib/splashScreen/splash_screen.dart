import 'dart:async';

import 'package:flutter/material.dart';
import 'package:restaurant_app/Authentication/auth_screen.dart';

class Mysplashscreen extends StatefulWidget {
  const Mysplashscreen({super.key});

  @override
  State<Mysplashscreen> createState() => _Mysplashscreen();
}

class _Mysplashscreen extends State<Mysplashscreen> {
  startTimer() {
    Timer(const Duration(seconds: 8), () async {
      Navigator.push(
          context, MaterialPageRoute(builder: (c) => const AuthScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/images/splash.jpg"),
            const SizedBox(height: 10),
            const Padding(
                padding: EdgeInsets.all(18.0),
                child: Text(
                  "Restaurant App",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 40,
                    fontFamily: "Signatra",
                    letterSpacing: 3,
                  ),
                ))
          ],
        ),
      ),
    ));
  }
}
