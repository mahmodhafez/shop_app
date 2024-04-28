import 'package:flutter/material.dart';
import 'package:shop_app/model/products_model.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({
    super.key,
    required this.productModel,
  });
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border.symmetric(
              vertical: BorderSide(
                color: Colors.black,
                width: 0.1,
              ),
              horizontal: BorderSide(
                color: Colors.black,
                width: 0.2,
              ))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 120,
            width: 180,
            child: Image.network(
                fit: BoxFit.fill,
                productModel.image ??
                    'https://static.wixstatic.com/media/bb1bd6_5798c09022ba43249a38bfea9be1db34~mv2.png/v1/fill/w_1000,h_571,al_c,q_90,usm_0.66_1.00_0.01/bb1bd6_5798c09022ba43249a38bfea9be1db34~mv2.png'),
          ),
          Text(
            productModel.name ?? 'Name of product',
            style: const TextStyle(fontWeight: FontWeight.w500),
            textAlign: TextAlign.start,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Row(
            children: [
              Text(
                productModel.price.toString(),
                style: const TextStyle(
                    color: Colors.blue, fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }
}
