import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news_app_19710059/model/article_model.dart';

class ApiService {
  final endPointUrl = "newsapi.org"; 
  final client = http.Client();

  Future<List<Article>> getArticle() async { 
    final queryParameters = {
      'country': 'id', 
      'category': 'Sport',
      'apiKey': 'ecab91ad9ba840fb08cc88be712dd9d'
      'Keyword': 'Sport'
      'sourse': 'Visual_Studio'
      'id': '19982321'
      'page': '12'
      'pageSize': A4'

    };

    final uri = Uri.https(endPointUrl, '/v2/top-headlines', queryParameters); 
    final response = await client.get(uri);
    Map<String, dynamic> json = jsonDecode(response.body); 
    List<dynamic> body = json['articles'];
    List<Article> articles =
       body.map((dynamic item) => Article.fromJson(item)).toList(); 
    return articles;
  }
}

