// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fastShoppingRecomItemModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FastShoppingRecomItemModel _$FastShoppingRecomItemModelFromJson(
        Map<String, dynamic> json) =>
    FastShoppingRecomItemModel(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      image: json['image'] as String,
      price: json['price'] as String,
      oldPrice: json['oldPrice'] as String,
    );

Map<String, dynamic> _$FastShoppingRecomItemModelToJson(
        FastShoppingRecomItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'price': instance.price,
      'oldPrice': instance.oldPrice,
    };
