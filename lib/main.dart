import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Aufgabe 1'),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          color: Colors.pink[50],
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Hello App Akademie!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    _coloredButton('A', Colors.red),
                    const SizedBox(width: 10),
                    _coloredButton('B', Colors.green),
                    const SizedBox(width: 10),
                    _coloredButton('C', Colors.blue),
                  ],
                ),
                const SizedBox(height: 10),
                const SizedBox(height: 20),
                Row(
                  children: const [
                    SizedBox(width: 60),
                    Icon(Icons.face, size: 50, color: Colors.black),
                    SizedBox(width: 120),
                    Icon(Icons.face, size: 50, color: Colors.black),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _coloredButton(String text, Color color) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple,
            shape: const StadiumBorder(),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          ),
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
