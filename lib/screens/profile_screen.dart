import 'package:flutter/material.dart';
import 'package:pexa_test/widgets/common_appbar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: "Profile"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage("https://t3.ftcdn.net/jpg/02/43/12/34/240_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg"),
            ),
            SizedBox(height: 12),
            Text("John Doe", style: TextStyle(fontSize: 22)),
            Text("Flutter Developer"),
            SizedBox(height: 50),
            ElevatedButton(onPressed: () => Navigator.pop(context), child: Text("Back")),
          ],
        ),
      ),
    );
  }
}
