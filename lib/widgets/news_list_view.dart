import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/news_tile.dart';
import 'package:dio/dio.dart';

class NewsListViewState extends StatelessWidget {
  final List<ArticleModel> articles;
  NewsListViewState({super.key, required this.articles});
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articles.length, (
        context,
        index,
      ) {
        return NewsTile(articlemodel: articles[index]);
      }),
    );
    // return ListView.builder(
    //   physics: BouncingScrollPhysics(),
    //   itemCount: 10,
    //   itemBuilder: (context, index) => Padding(
    //     padding: const EdgeInsets.only(bottom: 22),
    //     child: NewsTile(),
    //   ),
    // );
  }
}
