// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      discription: json['discription'] as String?,
      price: json['price'] as String?,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'discription': instance.discription,
      'price': instance.price,
      'imageUrl': instance.imageUrl,
    };
