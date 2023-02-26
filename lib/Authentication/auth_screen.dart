import 'package:flutter/material.dart';
import 'package:restaurant_app/authentication/login.dart';
import 'package:restaurant_app/authentication/register.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreen();
}

class _AuthScreen extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                colors: [Colors.cyan, Colors.amber],
                begin: FractionalOffset(0.0, 0.0),
                end: FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp,
              )),
            ),
            automaticallyImplyLeading: false,
            title: const Text(
              "Kasi Bite Delivery",
              style: TextStyle(
                fontSize: 60,
                color: Colors.white,
                fontFamily: "Lobster",
              ),
            ),
            centerTitle: true,
            bottom: const TabBar(tabs: [
              Tab(
                icon: Icon(
                  Icons.lock,
                  color: Colors.white,
                ),
                text: "Login",
              ),
              Tab(
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                text: "Register",
              )
            ]),
          ),
          body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Colors.blueAccent, Colors.tealAccent])),
            child: const TabBarView(
              children: [
                Loginscreen(),
                Registerscreen(),
              ],
            ),
          ),
        ));
  }
}
