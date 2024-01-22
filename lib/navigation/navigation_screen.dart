import 'package:examp_app/pages/page2.dart';
import 'package:flutter/material.dart';

import '../pages/page1.dart';

class MyNavScreen extends StatefulWidget {
  const MyNavScreen({super.key});

  @override
  State<MyNavScreen> createState() => _MyNavScreenState();
}

class _MyNavScreenState extends State<MyNavScreen> {
  late PageController controller;
  int selectedIndex = 0;

  @override
  void initState() {
    controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: Container(
        height: 90,
        width: double.infinity,
        decoration: const BoxDecoration(color: Colors.black),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {
                  controller.animateToPage(0,
                      duration: const Duration(milliseconds: 250),
                      curve: Curves.linear);
                },
                icon: Icon(
                  Icons.newspaper_outlined,
                  color: selectedIndex == 0 ? Colors.yellow : Colors.white,
                )),
            IconButton(
                onPressed: () {
                  controller.animateToPage(1,
                      duration: const Duration(milliseconds: 250),
                      curve: Curves.linear);
                },
                icon: Icon(
                  Icons.person,
                  color: selectedIndex == 1 ? Colors.yellow : Colors.white,
                ))
          ],
        ),
      ),
      body: PageView(
        controller: controller,
        onPageChanged: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        children: [
          Page1(),
          const Page2(),
        ],
      ),
    );
  }
}
