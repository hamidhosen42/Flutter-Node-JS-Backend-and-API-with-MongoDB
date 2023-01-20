// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_nodejs_client/create_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => CreateData()));
                },
                child: Text("CREATE")),
            ElevatedButton(onPressed: () {}, child: Text("READ")),
            ElevatedButton(onPressed: () {}, child: Text("UPDATE")),
            ElevatedButton(onPressed: () {}, child: Text("DELETE")),
          ],
        ),
      ),
    );
  }
}