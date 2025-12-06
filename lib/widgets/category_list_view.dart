import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});
final List<CategoryModel> categories = const [
    CategoryModel(
      image: 'assets/business.jpg',
      categoryName: 'Business',
    ),
    CategoryModel(
      image: 'assets/entertainment.jpg',
      categoryName: 'Entertainment',
    ),
    CategoryModel(
      image: 'assets/health.jpg',
      categoryName: 'Health',
    ),
    CategoryModel(
      image: 'assets/science.jpg',
      categoryName: 'Science',
    ),
    CategoryModel(
      image: 'assets/technology.jpg',
      categoryName: 'Technology',
    ),
    CategoryModel(
      image: 'assets/sport.jpg',
      categoryName: 'Sports',
    ),
    CategoryModel(
      image: 'assets/general.jpg',
      categoryName: 'General',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    
    return SizedBox(
      //width: double.infinity,  
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => CategoryCard(
              category: categories[index],
            )
      ),
    );
  }
}
