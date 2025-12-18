import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);
  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
  Response response = await dio.get(
    'https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=c85a9e09eda5490b8f2d64cd80e7b29c',
  );
  Map<String, dynamic> jsonData = response.data;
  List<dynamic> articles = jsonData['articles'];
  List<ArticleModel> articleList = [];
  for (var article in articles) {
    ArticleModel articleModel = ArticleModel(
      image: article['urlToImage'],
      title: article['title'],
      subTitle: article['description'],
    );
    articleList.add(articleModel);
  }
  return articleList;
}  catch (e) {
  return[];
}
  }
}
