import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:ekipman_pc/models/albums_model.dart';

Future<List<Albums>> fetchData() async {
  final response =
  await http.get(Uri.parse('https://gist.githubusercontent.com/Brkclkk341/0c9e3124cc008eca947842d4e0de5978/raw/eb7910d84657cad2b845fbdac8081d516873e29e/bilgisayar.json'));
  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) => new Albums.fromJson(data)).toList();
  } else {
    throw Exception('Unexpected error occured!');
  }
}