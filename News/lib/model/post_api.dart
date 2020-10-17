import 'dart:io';

import 'package:http/http.dart' as http;
import 'dart:async';

import './post.dart';

Future<List<Posts>> getPosts() async {
  String url = "http://192.168.43.18/newsAPI/index.php";
  try {
    final response = await http.get(url);
    return postsFromMap(response.body);
  } on SocketException {
    throw SocketException('No Internet Connection');
  }
}
