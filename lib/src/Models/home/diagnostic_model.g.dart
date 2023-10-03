// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diagnostic_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiagnosticModelImpl _$$DiagnosticModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DiagnosticModelImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      discription: json['discription'] as String?,
      price: json['price'] as String?,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$DiagnosticModelImplToJson(
        _$DiagnosticModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'discription': instance.discription,
      'price': instance.price,
      'imageUrl': instance.imageUrl,
    };
