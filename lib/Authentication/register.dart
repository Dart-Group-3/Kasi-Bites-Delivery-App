import 'package:flutter/material.dart';
import 'package:restaurant_app/Widgets/custom_text_field.dart';
import 'package:image_picker/image_picker.dart';

class Registerscreen extends StatefulWidget {
  const Registerscreen({super.key});

  @override
  State<Registerscreen> createState() => _Registerscreen();
}

class _Registerscreen extends State<Registerscreen> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController locationController = TextEditingController();

  XFile? imageXFile;
  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(
              height: 10,
            ),
            InkWell(
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.width * 0.20,
                backgroundColor: Colors.white,
                backgroundImage: imageXFile == null
                    ? null
                    : FileImage(file(imageXFile!.path)),
                child: imageXFile == null
                    ? Icon(
                        Icons.add_photo_alternate,
                        size: MediaQuery.of(context).size.width * 0.20,
                        color: Colors.grey,
                      )
                    : null,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Form(
              key: _formkey,
              child: Column(children: [
                Customtextfield(
                  data: Icons.person,
                  controller: nameController,
                  hintText: "Name",
                  isObsecre: false,
                )
                Customtextfield(
                  data: Icons.email,
                  controller: emailController,
                  hintText: "Email",
                  isObsecre: false,
                )
                Customtextfield(
                  data: Icons.lock,
                  controller: passwordController,
                  hintText: "Password",
                  isObsecre: true,
                )
                Customtextfield(
                  data: Icons.lock,
                  controller: confirmPasswordController,
                  hintText: "Confirm Password",
                  isObsecre: true,
                )
                Customtextfield(
                  data: Icons.phone,
                  controller: phoneController,
                  hintText: "Phone",
                  isObsecre: false,
                )
                Customtextfield(
                  data: Icons.my_location,
                  controller: locationController,
                  hintText: "Restaurant Location",
                  isObsecre: false,
                  enabled: false,
                ),
                Container(
                  width: 400,
                  height: 40,
                  alignment: Alignment.center,
                  child: ElevatedButton.icon(
                    label: const Text(
                      "Get my current Location",
                      style: TextStyle(color: Colors.white),
                    ),
                    icon: const Icon(
                      Icons.location_on,
                      color: Colors.white,
                    ),
                    onPressed: () => print("clicked"),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),

                  ),
                )
              ]),
            )
            const SizedBox(height: 30,),
            ElevatedButton(
              child: const Text(
                "Sign Up",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 194, 10, 56),
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10)
              ),
              onPressed: () => print("clicked"),
            ),
            const Size(height: 30,),
          ],
        ),
      ),
    );
  }
}
