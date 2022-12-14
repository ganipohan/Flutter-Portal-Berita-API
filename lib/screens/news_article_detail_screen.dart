import 'package:flutter/material.dart';

import '../viewmodels/news_article_view_model.dart';
import '../widgets/circle_image.dart';

class NewsArticleDetailScreen extends StatelessWidget {
  final NewsArticleViewModel article;

  NewsArticleDetailScreen({required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.png'),
            ),
            SizedBox(
              width: 5,
            ),
            Container(
              constraints: BoxConstraints(
                maxWidth: 150,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Author',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    this.article.author ?? 'Undefined',
                    style: TextStyle(color: Colors.black, fontSize: 13),
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Stack(
                  alignment: Alignment.centerLeft,
                  children: <Widget>[
                    Divider(
                      height: 80,
                      color: Colors.green,
                      thickness: 20,
                    ),
                    Text(
                      ' Berita Utama',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Text(
                  '${this.article.title}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    wordSpacing: 3,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  '${this.article.publishedAt}',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 200,
                  child: CircleImage(
                    imageUrl: '${this.article.imageUrl}',
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  this.article.description ?? "No Contents",
                  style: TextStyle(
                    fontSize: 16,
                    wordSpacing: 3,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
