import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.construction, size: 40),
            SizedBox(
              height: 10,
            ),
            Text("This page is under construction."),
            Text("I'll be honest, this will probably never be completed."),
            Text("Sorry T-T")
          ],
        ),
      ),
    );
  }
}
