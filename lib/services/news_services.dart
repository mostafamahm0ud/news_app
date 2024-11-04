import 'package:dio/dio.dart';
import 'package:news_app/models/artical_model.dart';

class NewsService {
  final Dio dio;

  NewsService({required this.dio});

  Future<List<ArticalModel>> getTopHeadlines({required String category}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?apiKey=dc05834e996e480998b90264039d6e23&country=us&category=$category');

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articals = jsonData['articles'];

      List<ArticalModel> articalList = [];
      for (var artical in articals) {
        ArticalModel articalModel = ArticalModel.fromJson(artical);
        articalList.add(articalModel);
      }
      return articalList;
    } catch (e) {
      return [];
    }
  }
}
