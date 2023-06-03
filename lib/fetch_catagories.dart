import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<dynamic>> fetchCatagories() async {
  // final response1 = await http.get(
  //     Uri.parse(' '));
  final response2 = await http.get(
      Uri.parse('https://nahalit.com/wp-json/wp/v2/posts?categories=938'));
  final response3 = await http.get(
      Uri.parse('https://nahalit.com/wp-json/wp/v2/posts?categories=1314'));
  final response4 = await http.get(
      Uri.parse('https://nahalit.com/wp-json/wp/v2/posts?categories=1'));
  if (response2.statusCode == 200) {
    // The request was successful, parse the JSON response
    List<dynamic> data1 = json.decode(response3.body);
    List<dynamic> data2 = json.decode(response2.body);
    List<dynamic> data3 = json.decode(response4.body);
    // List<dynamic> data4 = json.decode(response1.body);

    return data1+data2+data3;
  }
  else {
    // The request failed, handle the error
    throw Exception('Failed to load posts');
  }
}