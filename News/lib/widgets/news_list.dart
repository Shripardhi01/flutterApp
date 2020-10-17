import 'package:flutter/material.dart';

import '../model/post.dart';

class NewsList extends StatelessWidget {
  final List<Posts> items;
  NewsList(this.items);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, i) {
        return Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          elevation: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                items[i].imgUrl,
                fit: BoxFit.cover,
              ),
              Text(items[i].title),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(items[i].date),
                  Icon(Icons.favorite_border),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
