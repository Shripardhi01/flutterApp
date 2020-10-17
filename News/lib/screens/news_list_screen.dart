import 'package:flutter/material.dart';

import '../model/post_api.dart';
import '../widgets/news_list.dart';

class NewsListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getPosts(),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);
          return snapshot.hasData
              ? NewsList(snapshot.data)
              : Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
