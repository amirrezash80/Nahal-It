import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<dynamic>> fetchPosts() async {
  final response =
      await http.get(Uri.parse('https://nahalit.com/wp-json/wp/v2/posts'));
  if (response.statusCode == 200) {
    // The request was successful, parse the JSON response
    List<dynamic> data = json.decode(response.body);

    return data;
  } else {
    // The request failed, handle the error
    throw Exception('Failed to load posts');
  }
}
