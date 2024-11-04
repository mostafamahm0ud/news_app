import 'package:flutter/material.dart';
import 'package:news_app/views/widgets/categories_list_view.dart';
import 'package:news_app/views/widgets/news_list_view_builder.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(child: CategoriesListView()),
          const SliverToBoxAdapter(
              child: SizedBox(
            height: 16,
          )),
          const NewsListViewBuilder(category: 'general'),
        ],
      ),
    );
  }
}
