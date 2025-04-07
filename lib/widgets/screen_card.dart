import 'package:flutter/material.dart';

class ScreenCard extends StatelessWidget {
  IconData icon;
  final String title;
  final Widget page;
   ScreenCard({super.key,required this.icon, required this.title, required this.page});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      elevation: 5,
      child: ListTile(
        leading: Icon(icon, color: Theme.of(context).colorScheme.primary),
        title: Text(title),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => page)),
      ),
    );
  }
}
