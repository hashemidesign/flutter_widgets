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
        title: const Text("AlertDialog Widget"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text("AlertDialog Title"),
                icon: const Icon(Icons.add_alert),
                contentPadding: const EdgeInsets.all(20.0),
                content: const Text("Lorem ipsum dolor sit amet"),
                actions: [
                  TextButton(
                    onPressed: () {},
                    child: const Text("Action 1"),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text("Action 2"),
                  )
                ],
              ),
            );
          },
          child: const Text("Show Alert Dialog"),
        ),
      ),
    );
  }
}
