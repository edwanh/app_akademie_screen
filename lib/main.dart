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
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Icon(Icons.face, size: 50, color: Colors.black),
                  Icon(Icons.face, size: 50, color: Colors.black),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _coloredButton(String text, Color color) {
    return ElevatedButton(
      onPressed: () {
        // Hier die Button-Logik einfügen
        print('Button $text wurde gedrückt!');
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        fixedSize: const Size(80, 80), // Sowohl Breite als auch Höhe festlegen
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
