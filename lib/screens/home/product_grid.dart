import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mfashion/core/misc/size_config.dart';
import 'package:mfashion/models/product.dart';
import 'package:mfashion/screens/home/product_card.dart';

class ProductGrid extends StatelessWidget {
  ProductGrid({Key? key, required this.products, required this.axisCount})
      : super(key: key);

  final RxList<Product> products;
  final int axisCount;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return GridView.builder(
        shrinkWrap: true,
        primary: false,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: axisCount,
          crossAxisSpacing: 6.0,
          mainAxisSpacing: 6.0,
          childAspectRatio: 0.65, // Adjust for staggered effect
        ),
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: (65 / 100) * SizeConfig.screenWidth,
            child: productCard(products, index),
          );
        },
      );
    });
  }
}
