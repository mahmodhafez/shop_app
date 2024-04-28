import 'package:flutter/material.dart';
import 'package:shop_app/model/category_model.dart';
import 'package:shop_app/service/shop_service.dart';
import 'package:shop_app/widgets/category_item.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
    required this.categoriesList,
  });
  final List<CategoryModel> categoriesList;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      width: 110,
      child: ListView.builder(
        itemCount: categoriesList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: CategoryItem(
            categoryModel: categoriesList[index],
          ),
        ),
      ),
    );
  }
}
class CategoriesFutureBuilder extends StatelessWidget {
  const CategoriesFutureBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ShopService().getCategories(),
      builder: (context, snapshot) => CategoryListView(
        categoriesList: snapshot.data ?? [],
      ),
    );
  }
}
