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

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool switched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedCrossFade Widget"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: TextButton(
              onPressed: () {
                setState(() {
                  switched = !switched;
                });
              },
              child: const Text("Switch"),
            ),
          ),
          AnimatedCrossFade(
            firstChild: const Text("First Child"),
            secondChild: const Text("Second Child"),
            crossFadeState:
                switched ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: const Duration(seconds: 1),
          )
        ],
      ),
    );
  }
}
