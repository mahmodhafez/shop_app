import 'package:flutter/material.dart';
import 'package:shop_app/model/banner_model.dart';
import 'package:shop_app/service/shop_service.dart';

class BannerFutureBuilder extends StatelessWidget {
  const BannerFutureBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ShopService().getBanners(),
      builder: (context, snapshot) => BannerPageView(
        bannerModel: snapshot.data ?? [],
      ),
    );
  }
}

class BannerPageView extends StatelessWidget {
  const BannerPageView({
    super.key,
    required this.bannerModel,
  });
  final List<BannerModel> bannerModel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200, // Adjust the height according to your needs
      child: PageView.builder(
        itemCount: bannerModel.length,
        itemBuilder: (context, index) => Image.network(bannerModel[index]
                .image ??
            'https://static.wixstatic.com/media/bb1bd6_5798c09022ba43249a38bfea9be1db34~mv2.png/v1/fill/w_1000,h_571,al_c,q_90,usm_0.66_1.00_0.01/bb1bd6_5798c09022ba43249a38bfea9be1db34~mv2.png'),
      ),
    );
  }
}
