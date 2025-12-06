import 'package:flutter/material.dart';
import 'package:news_app/widgets/category_list_view.dart';
import 'package:news_app/widgets/news_list_view.dart';




class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text.rich(
          TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: 'News ',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),

              TextSpan(
                text: 'Cloud',
                style: TextStyle(
                  color: Colors.yellow,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ],
          ),
        ),
      ),
       body:  Padding(
         padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 16),
         child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: CategoryListView()),
              SliverToBoxAdapter(
              child:SizedBox(
                 height: 32,
              ),
            ),
             NewsListView()
          ],
         ),
       
       ),
    );
   
  }
}
