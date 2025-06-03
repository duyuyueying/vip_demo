import 'package:json_annotation/json_annotation.dart';

part 'fastShoppingRecomItemModel.g.dart';

@JsonSerializable()
class FastShoppingRecomItemModel {
  final int id;
  final String title;
  final String image;
  final String price;
  final String oldPrice;

  FastShoppingRecomItemModel({
    required this.id,
    required this.title,
    required this.image,
    required this.price,
    required this.oldPrice,
  });

  factory FastShoppingRecomItemModel.fromJson(Map<String, dynamic> json) =>
      _$FastShoppingRecomItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$FastShoppingRecomItemModelToJson(this);
}
