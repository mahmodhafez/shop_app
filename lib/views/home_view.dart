import 'package:flutter/material.dart';
import 'package:shop_app/widgets/SliverGridProduct.dart';
import 'package:shop_app/widgets/banner_page_view.dart';
import 'package:shop_app/widgets/category_list_view.dart';
import 'package:shop_app/widgets/sliver_custom_title.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Shop App',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: BannerFutureBuilder(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 12,
              ),
            ),
            SilverCustomText(
              title: 'Categories',
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            SliverToBoxAdapter(
              child: CategoriesFutureBuilder(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            SilverCustomText(
              title: 'Products',
            ),
            ProductsFutureBuilder()
          ],
        ),
      ),
    );
  }
}
