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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AboutListTile Widget"),
      ),
      body: const Center(
        child: AboutListTile(
          icon: Icon(Icons.icecream),
          applicationIcon: FlutterLogo(),
          applicationName: "AboutTileWidget Showcase",
          applicationVersion: "1.0.0",
          applicationLegalese: "Legalese",
          aboutBoxChildren: [
            Text("Lorem ipsum dolor sit amet..."),
            Text("Lorem ipsum dolor sit amet..."),
            Text("Lorem ipsum dolor sit amet..."),
          ],
          child: Text("This is the child"),
        ),
      ),
    );
  }
}

