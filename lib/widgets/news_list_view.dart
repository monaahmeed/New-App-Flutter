import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_tile.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: 10, (context, index) {
        return const NewsTile();
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
