import 'package:json_annotation/json_annotation.dart';

part 'product_detail_argument.g.dart';

@JsonSerializable()
class ProductDetailArgument {
  final int? qty;
  final String? productName;
  final String? image;
  final String? id;

  ProductDetailArgument({this.qty, this.productName, this.image, this.id});

  factory ProductDetailArgument.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailArgumentFromJson(json);

  Map<String, dynamic> toJson() => _$ProductDetailArgumentToJson(this);
}
