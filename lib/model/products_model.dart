class ProductModel {
  final num? price;
  final num? oldPrice;
  final num? discount;
  final String? name;
  final String? image;

  ProductModel({
    required this.name,
    required this.image,
    required this.price,
    required this.discount,
    required this.oldPrice,
  });
}
