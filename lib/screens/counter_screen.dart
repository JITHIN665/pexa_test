import 'package:flutter/material.dart';
import 'package:pexa_test/widgets/common_appbar.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int count = 0;
  String? warning;

  void increment() {
    setState(() {
      count++;
      warning = null;
    });
  }

  void decrement() {
    setState(() {
      if (count > 0) {
        count--;
        warning = null;
      } else {
        warning = "Cannot go below 0";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: "Counter"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedSwitcher(
              duration: Duration(milliseconds: 300),
              transitionBuilder: (child, anim) => ScaleTransition(scale: anim, child: child),
              child: Text('$count', key: ValueKey<int>(count), style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
            ),
            if (warning != null) Text(warning!, style: TextStyle(color: Colors.red)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: increment, icon: Icon(Icons.add_circle, size: 36)),
                SizedBox(width: 20),
                IconButton(onPressed: decrement, icon: Icon(Icons.remove_circle, size: 36)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
