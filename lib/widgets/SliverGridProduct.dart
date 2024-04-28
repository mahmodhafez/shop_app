import 'package:flutter/cupertino.dart';
import 'package:shop_app/model/products_model.dart';
import 'package:shop_app/service/shop_service.dart';
import 'package:shop_app/widgets/category_tile.dart';

class SliverGridProducts extends StatelessWidget {
  const SliverGridProducts({
    super.key,
    required this.productList,
  });
  final List<ProductModel> productList;
  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: productList.length,
      itemBuilder: (context, index) => ProductTile(
        productModel: productList[index],
      ),
    );
  }
}
class ProductsFutureBuilder extends StatelessWidget {
  const ProductsFutureBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ShopService().getProducts(),
      builder: (context, snapshot) => SliverGridProducts(
        productList: snapshot.data ?? [],
      ),
    );
  }
}
