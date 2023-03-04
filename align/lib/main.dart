import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Align Widget"),
      ),
      body: Center(
        child: Container(
          height: 300.0,
          width: double.maxFinite,
          color: Colors.blue.shade50,
          child: const Align(
            alignment: Alignment.topRight,
            child: FlutterLogo(
              size: 50.0,
            ),
          ),
        ),
      ),
    );
  }
}
