import 'package:flutter/material.dart';
import 'package:pexa_test/widgets/screen_card.dart';
import 'counter_screen.dart';
import 'country_list_screen.dart';
import 'post_list_screen.dart';
import 'profile_screen.dart';

class HomeScreen extends StatefulWidget {
  final bool isDark;
  final VoidCallback toggleTheme;

  const HomeScreen({super.key, required this.isDark, required this.toggleTheme});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late bool _isDark;

  @override
  void initState() {
    super.initState();
    _isDark = widget.isDark;
  }

  void _toggleTheme() {
    widget.toggleTheme();
    setState(() {
      _isDark = !_isDark;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Modern Flutter App"),
        actions: [
          Row(
            children: [
              Icon(
                _isDark ? Icons.dark_mode : Icons.light_mode,
                color: _isDark ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.onPrimary,
              ),
              Switch(value: _isDark, onChanged: (_) => _toggleTheme(), activeColor: Theme.of(context).colorScheme.primary),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            Text("Welcome to the Modern Flutter App!", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            ScreenCard(icon: Icons.calculate, title: "Counter App", page: CounterScreen()),
            ScreenCard(icon: Icons.search, title: "Search Countries", page: CountryListScreen()),
            ScreenCard(icon: Icons.language, title: "Fetch Posts", page: PostListScreen()),
            ScreenCard(icon: Icons.person, title: "Profile Screen", page: ProfileScreen()),
          ],
        ),
      ),
    );
  }


}
