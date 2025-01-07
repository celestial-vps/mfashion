import 'package:json_annotation/json_annotation.dart';
part 'product.g.dart';

@JsonSerializable(explicitToJson: true)
class Product {
  String? oid;
  String? productName;
  String? description;
  String? normalPrice;
  String? discountPrice;
  String? imageFile;

  Product(
      {this.oid,
      this.productName,
      this.description,
      this.imageFile,
      this.normalPrice,
      this.discountPrice});

  factory Product.fromJson(Map<String, dynamic> data) =>
      _$ProductFromJson(data);
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
