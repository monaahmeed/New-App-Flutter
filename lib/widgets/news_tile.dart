import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

// cached network image
class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articlemodel});
  final ArticleModel articlemodel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child:
              (articlemodel.image != null &&
                  articlemodel.image!.trim().isNotEmpty &&
                  articlemodel.image!.toLowerCase() != "null")
              ? Image.network(
                  articlemodel.image!,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Image.asset(
                      'assets/images/no_image.png',
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    );
                  },
                )
              : Image.asset(
                  'assets/no_image.jpg',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
        ),

        const SizedBox(height: 12),
        Text(
          articlemodel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          articlemodel.subTitle ?? "",
          maxLines: 2,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        ),
      ],
    );
  }
}
