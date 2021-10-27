// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_detail_argument.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDetailArgument _$ProductDetailArgumentFromJson(
        Map<String, dynamic> json) =>
    ProductDetailArgument(
      qty: json['qty'] as int?,
      productName: json['productName'] as String?,
      image: json['image'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$ProductDetailArgumentToJson(
        ProductDetailArgument instance) =>
    <String, dynamic>{
      'qty': instance.qty,
      'productName': instance.productName,
      'image': instance.image,
      'id': instance.id,
    };
