import 'package:flutter/material.dart';
import 'package:pexa_test/widgets/common_appbar.dart';

class CountryListScreen extends StatefulWidget {
  const CountryListScreen({super.key});

  @override
  _CountryListScreenState createState() => _CountryListScreenState();
}

class _CountryListScreenState extends State<CountryListScreen> {
  List<String> countries = [
    "India",
    "United States",
    "Canada",
    "Brazil",
    "Australia",
    "Germany",
    "France",
    "Italy",
    "Spain",
    "Japan",
    "China",
    "Russia",
    "South Africa",
    "Mexico",
    "Argentina",
    "Norway",
    "Sweden",
    "Finland",
    "Denmark",
    "Netherlands",
    "Belgium",
    "Poland",
    "Switzerland",
    "Austria",
    "Greece",
    "Turkey",
    "Saudi Arabia",
    "UAE",
    "Iran",
    "Pakistan",
    "Bangladesh",
    "Sri Lanka",
    "Nepal",
    "Bhutan",
    "Thailand",
    "Vietnam",
    "Malaysia",
    "Singapore",
    "Indonesia",
    "Philippines",
    "New Zealand",
    "South Korea",
    "North Korea",
    "Egypt",
    "Nigeria",
    "Kenya",
    "Morocco",
    "Israel",
    "Ukraine",
  ];
  String query = "";

  @override
  Widget build(BuildContext context) {
    final filtered = countries.where((c) => c.toLowerCase().contains(query.toLowerCase())).toList();

    return Scaffold(
      appBar: CommonAppBar(title: "Countries"),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(12),
            child: TextField(
              decoration: InputDecoration(hintText: "Search country", prefixIcon: Icon(Icons.search)),
              onChanged: (val) => setState(() => query = val),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filtered.length,
              itemBuilder: (_, i) => Card(margin: EdgeInsets.symmetric(horizontal: 12, vertical: 4), child: ListTile(title: Text(filtered[i]))),
            ),
          ),
        ],
      ),
    );
  }
}
