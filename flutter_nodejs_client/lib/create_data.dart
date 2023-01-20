// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_nodejs_client/services/api.dart';

class CreateData extends StatefulWidget {
  const CreateData({super.key});

  @override
  State<CreateData> createState() => _CreateDataState();
}

class _CreateDataState extends State<CreateData> {
  var nameController = TextEditingController();
  var priceController = TextEditingController();
  var descController = TextEditingController();

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
                decoration: InputDecoration(
                  hintText: "Name Here",
                ),
              ),
              TextField(
                controller: priceController,
                decoration: InputDecoration(
                  hintText: "Price Here",
                ),
              ),
              TextField(
                controller: descController,
                decoration: InputDecoration(
                  hintText: "Desc Here",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    // Navigator.push(
                    //     context, MaterialPageRoute(builder: (_) => CreateData()));
                    var data = {
                      "pname": nameController.text,
                      "pprice": priceController.text,
                      "pdes": descController.text
                    };

                    Api.addproduct(data);
                  },
                  child: Text("CREATE Data")),
            ],
          ),
        ),
      ),
    );
  }
}
