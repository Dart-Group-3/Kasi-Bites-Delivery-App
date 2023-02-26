import 'package:flutter/material.dart';
import 'package:restaurant_app/Widgets/custom_text_field.dart';
class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _Loginscreen();
}

class _Loginscreen extends State<Loginscreen> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.all(15.),
            child: Image.asset(
              "images/images/seller.png",
              height: 270,),
          ),
          Form(
            key: _formkey,
            child: Column(
              children: [
                Customtextfield(
                  data: Icons.email,
                  controller: emailController,
                  hintText: "Email",
                  isObsecre: false,
                ),
                Customtextfield(
                  data: Icons.lock,
                  controller: passwordController,
                  hintText: "Password",
                  isObsecre: true,
                ),
              ],
            ),
          ),
          ElevatedButton(
            child: const Text(
              "Login",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),
            ),
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 194, 10, 56),
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10)
            ),
            onPressed: () => print("clicked"),
          ),
          const SizedBox(height: 30,),
        ],
      ),
    );
  }
}
