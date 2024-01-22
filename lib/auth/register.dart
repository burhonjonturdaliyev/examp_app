import 'package:examp_app/auth/login.dart';
import 'package:flutter/material.dart';

import '../navigation/navigation_screen.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool show = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              "assets/rasm.jpg",
              width: MediaQuery.of(context).size.width * .5,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "MU University",
            style: TextStyle(color: Colors.red, fontSize: 25),
          ),
          const SizedBox(
            height: 20,
          ),
          const Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Get started",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Please, Enter the name!",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            onTapOutside: (event) => FocusScope.of(context).unfocus(),
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
                label: const Text("enter_your_username"),
                prefixIcon: const Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(13),
                )),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            onTapOutside: (event) => FocusScope.of(context).unfocus(),
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
                label: const Text("enter your name"),
                prefixIcon: const Icon(
                  Icons.account_circle_outlined,
                  color: Colors.white,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(13),
                )),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            onTapOutside: (event) => FocusScope.of(context).unfocus(),
            obscureText: show,
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
                label: const Text("enter the password"),
                prefixIcon: const Icon(
                  Icons.password_sharp,
                  color: Colors.white,
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      show = !show;
                    });
                  },
                  icon: const Icon(
                    Icons.remove_red_eye,
                    color: Colors.white,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(13),
                )),
          ),
          const SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.center,
            child: RichText(
                text: const TextSpan(children: [
              TextSpan(
                  text: "By continuing you're indicating that you accept our\n",
                  style: TextStyle(color: Colors.white)),
              TextSpan(
                  text: "Term of use ", style: TextStyle(color: Colors.red)),
              TextSpan(text: "and ", style: TextStyle(color: Colors.white)),
              TextSpan(
                  text: "Privicy Policy", style: TextStyle(color: Colors.red)),
            ])),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  maximumSize: const Size(double.infinity, 50),
                  minimumSize: const Size(double.infinity, 50),
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyNavScreen(),
                    ));
              },
              child: const Text(
                "Continue",
                style: TextStyle(color: Colors.white),
              )),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                  (route) => false);
            },
            child: RichText(
                text: const TextSpan(children: [
              TextSpan(
                  text: "Have a accaount? ",
                  style: TextStyle(color: Colors.white)),
              TextSpan(text: "SignIp ", style: TextStyle(color: Colors.red)),
            ])),
          )
        ],
      ))),
    );
  }
}
