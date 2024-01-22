import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: false,
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.logout,
                color: Colors.red,
              ))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Align(
            alignment: Alignment.center,
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              child: Icon(
                Icons.person_2_rounded,
                color: Colors.yellow,
              ),
            ),
          ),
          const Text(
            "Name",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          const Text(
            "E-male",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          const SizedBox(
            height: 10,
          ),
          userDatail("Edit Profile"),
          userDatail("Language"),
          userDatail("Theme"),
          userDatail("Write to Admin"),
        ],
      ),
    );
  }

  Column userDatail(String title) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(color: Colors.white),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: Colors.yellow,
            )
          ],
        ),
        const Divider(
          thickness: 1,
          color: Colors.yellow,
        ),
        const SizedBox(
          height: 15,
        )
      ],
    );
  }
}
