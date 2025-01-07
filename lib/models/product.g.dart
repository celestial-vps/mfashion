// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      oid: json['oid'] as String?,
      productName: json['productName'] as String?,
      description: json['description'] as String?,
      imageFile: json['imageFile'] as String?,
      normalPrice: json['normalPrice'] as String?,
      discountPrice: json['discountPrice'] as String?,
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'oid': instance.oid,
      'productName': instance.productName,
      'description': instance.description,
      'normalPrice': instance.normalPrice,
      'discountPrice': instance.discountPrice,
      'imageFile': instance.imageFile,
    };
