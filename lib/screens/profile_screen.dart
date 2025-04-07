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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(radius: 50, backgroundImage: NetworkImage("https://via.placeholder.com/150")),
            SizedBox(height: 12),
            Text("John Doe", style: TextStyle(fontSize: 22)),
            Text("Flutter Developer"),
            ElevatedButton(onPressed: () => Navigator.pop(context), child: Text("Back")),
          ],
        ),
      ),
    );
  }
}
