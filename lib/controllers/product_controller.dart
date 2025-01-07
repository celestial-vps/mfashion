import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mfashion/models/product.dart';

class ProductController extends GetxController {
  var products = <Product>[].obs;

  var productWomens = [
    Product(oid: 'Thu', productName: '8', description: '8', imageFile: '8'),
    Product(oid: 'Fri', productName: '9', description: '8', imageFile: '8'),
    Product(oid: 'Sat', productName: '10', description: '8', imageFile: '8'),
    Product(oid: 'Sun', productName: '11', description: '8', imageFile: '8'),
    Product(oid: 'Mon', productName: '12', description: '8', imageFile: '8'),
  ].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  Future<List<Product>?> fetchProducts() async {
    final String response =
        await rootBundle.loadString('assets/data/product.json');
    List<Product> productData = (json.decode(response) as List)
        .map((data) => Product.fromJson(data))
        .toList();
    products.value = productData;
    return products;
  }
}
