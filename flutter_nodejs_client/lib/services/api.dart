// ignore_for_file: unused_import, avoid_print, prefer_interpolation_to_compose_strings
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class Api {
  static const baseUrl = "http://192.168.0.104/api/";

  static addproduct(Map data) async {
    try {
      final res = await post(Uri.parse("${baseUrl}add_product"), body: data);

      print(res);
      if (res.statusCode == 200) {
        var data = jsonDecode(res.body.toString());
        print(data);
      } else {
        print("Failed to get response");
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}