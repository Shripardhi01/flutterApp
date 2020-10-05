import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class NewsItem {
  final String id, title, description, imgUrl, date, category;

  NewsItem({
    this.id,
    this.title,
    this.description,
    this.imgUrl,
    this.date,
    this.category,
  });

  // factory News.fromJson(Map<String, dynamic> jsonData) {
  //   return News(
  //     id: jsonData['id'],
  //     title: jsonData['title'],
  //     description: jsonData['description'],
  //     imgUrl: jsonData['imgUrl'],
  //     date: jsonData['date'],
  //     category: jsonData['category'],
  //   );
  // }
}

class News with ChangeNotifier {
  List<NewsItem> _news = [];

  List<NewsItem> get news {
    return [..._news];
  }

  Future<void> fetchAndSetOrders() async {
    final url = 'http://localhost/newsAPI/';
    final response = await http.get(url);
    // check connection with server
    if (response.statusCode == 200) {
      final List<NewsItem> loadedNews = [];
      final extractedData = json.decode(response.body) as Map<String, dynamic>;
      if (extractedData == null) {
        return;
      }
      extractedData.forEach((id, body) {
        loadedNews.add(
          NewsItem(
            id: id,
            title: body['title'],
            description: body['description'],
            imgUrl: body['imgUrl'],
            date: body['date'],
            category: body['category'],
          ),
        );
      });
      _news = loadedNews.reversed.toList();
      notifyListeners();
    } else
      throw Exception(
          'We were not able to successfully download the json data.');
  }
}
