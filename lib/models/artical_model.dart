class ArticalModel {
  final String? image;
  final String title;
  final String? description;

  ArticalModel(
      {required this.image, required this.title, required this.description});

  factory ArticalModel.fromJson(json) {
    return ArticalModel(
        image: json['urlToImage'],
        title: json['title'],
        description: json['description']);
  }
}
