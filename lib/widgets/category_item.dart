import 'package:flutter/material.dart';
import 'package:shop_app/model/category_model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.categoryModel,
  });
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 110,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(categoryModel.image ??
                  'https://static.wixstatic.com/media/bb1bd6_5798c09022ba43249a38bfea9be1db34~mv2.png/v1/fill/w_1000,h_571,al_c,q_90,usm_0.66_1.00_0.01/bb1bd6_5798c09022ba43249a38bfea9be1db34~mv2.png'))),
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        color: Colors.black54,
        child: Text(
          categoryModel.title ?? 'data',
          style: const TextStyle(
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
