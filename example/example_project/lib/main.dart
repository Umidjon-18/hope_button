import 'package:flutter/material.dart';
import 'package:hope_button/hope_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Hope Button'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: HopeButton(
          width: 250,
          height: 70,
          onTap: () {
            print("Tapped");
          },
          title: const Text(
            "Test Button",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          borderGradient: const LinearGradient(
            colors: [
              Colors.blue,
              Colors.red,
              Colors.green,
              Colors.yellow,
            ],
          ),
          borderWidth: 5,
          borderRadius: 10,
        ),
      ),
    );
  }
}
