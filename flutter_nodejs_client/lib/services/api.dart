// ignore_for_file: unused_import, avoid_print
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class Api {
  static const baseUrl = "";

  static addproduct(Map data) async {
    try {
      final res = await post(Uri.parse(baseUrl), body: data);

      if (res.statusCode == 200) {
        var data = jsonDecode(res.body.toString());
        print(data);
        print("Account create successfuly");
      } else {
        print("Failed");
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}