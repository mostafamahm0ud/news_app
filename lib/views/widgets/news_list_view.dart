// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app/services/news_services.dart';

// import '../../models/artical_model.dart';
// import 'news_tile.dart';

// class NewsListTile extends StatefulWidget {
//   const NewsListTile({super.key});

//   @override
//   State<NewsListTile> createState() => _NewsListTileState();
// }

// class _NewsListTileState extends State<NewsListTile> {
//   List<ArticalModel> articles = [];
//   @override
//   void initState() {
//     super.initState();
//     getNews();
//   }

//   Future<void> getNews() async {
//     articles = await NewsService(dio: Dio()).getTopHeadlines(category: '');
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SliverList(
//       delegate: SliverChildBuilderDelegate(
//         childCount: articles.length,
//         (context, index) {
//           return Padding(
//             padding: const EdgeInsets.only(bottom: 22),
//             child: NewsTile(
//               articleModel: articles[index],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:news_app/models/artical_model.dart';

import 'news_tile.dart';

class NewsListView extends StatelessWidget {
  final List<ArticalModel> articles;

  const NewsListView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: NewsTile(
              articleModel: articles[index],
            ),
          );
        },
      ),
    );
  }
}
