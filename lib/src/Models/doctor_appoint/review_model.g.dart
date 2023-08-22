// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReviewModel _$$_ReviewModelFromJson(Map<String, dynamic> json) =>
    _$_ReviewModel(
      id: json['id'] as String?,
      name: json['name'] as String?,
      imageUrl: json['imageUrl'] as String?,
      time: json['time'] as String?,
      rating: json['rating'] as String?,
      comment: json['comment'] as String?,
    );

Map<String, dynamic> _$$_ReviewModelToJson(_$_ReviewModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'time': instance.time,
      'rating': instance.rating,
      'comment': instance.comment,
    };
