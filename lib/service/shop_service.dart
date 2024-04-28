import 'package:dio/dio.dart';
import 'package:shop_app/model/banner_model.dart';
import 'package:shop_app/model/category_model.dart';
import 'package:shop_app/model/products_model.dart';

class ShopService {
  Dio dio = Dio();

  Future<List<CategoryModel>> getCategories() async {
    final response =
        await dio.get('https://student.valuxapps.com/api/categories');
    return List<CategoryModel>.from(response.data["data"]["data"].map(
        (item) => CategoryModel(image: item["image"], title: item["name"])));
  }

  Future<List<BannerModel>> getBanners() async {
    final response = await dio.get('https://student.valuxapps.com/api/banners');
    return List<BannerModel>.from(
        response.data["data"].map((item) => BannerModel(image: item["image"])));
  }

  Future<List<ProductModel>> getProducts() async {
    final response = await dio.get('https://student.valuxapps.com/api/home');
    return List<ProductModel>.from(response.data["data"]["products"].map(
        (item) => ProductModel(
            name: item["name"],
            image: item["image"],
            price: item["price"],
            discount: item["discount"],
            oldPrice: item["old_price"])));
  }
}
