// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CreateData extends StatefulWidget {
  const CreateData({super.key});

  @override
  State<CreateData> createState() => _CreateDataState();
}

class _CreateDataState extends State<CreateData> {
  TextEditingController nameController  = TextEditingController();
  TextEditingController priceController  = TextEditingController();
  TextEditingController descController  = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: nameController,
                decoration:InputDecoration(
                  hintText: "Name Here",
                ),
              ),
              TextField(
                controller: nameController,
                decoration:InputDecoration(
                  hintText: "Price Here",
                ),
              ),
              TextField(
                controller: nameController,
                decoration:InputDecoration(
                  hintText: "Desc Here",
                ),
              ),
              SizedBox(
                height: 20,
              ),
               ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => CreateData()));
                },
                child: Text("CREATE Data")),
            ],
          ),
        ),
      ),
    );
  }
}