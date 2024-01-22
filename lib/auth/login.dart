import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                  "Welcome back",
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
              const SizedBox(height: 5),
              const Align(
                alignment: Alignment.topRight,
                child: Text(
                  "Forget Password",
                  style: TextStyle(color: Colors.red),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      maximumSize: const Size(double.infinity, 50),
                      minimumSize: const Size(double.infinity, 50),
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                  onPressed: () {},
                  child: const Text(
                    "Continue",
                    style: TextStyle(color: Colors.white),
                  )),
              const SizedBox(
                height: 10,
              ),
              RichText(
                  text: const TextSpan(children: [
                TextSpan(
                    text: "Don't have a accaount? ",
                    style: TextStyle(color: Colors.white)),
                TextSpan(
                    text: "SignUp ", style: TextStyle(color: Colors.white)),
              ]))
            ],
          ),
        ),
      ),
    );
  }
}
