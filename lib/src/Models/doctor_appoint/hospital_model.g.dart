// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hospital_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HospitalModelImpl _$$HospitalModelImplFromJson(Map<String, dynamic> json) =>
    _$HospitalModelImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      location: json['location'] as String?,
      rating: json['rating'] as String?,
      review: json['review'] as String?,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$HospitalModelImplToJson(_$HospitalModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'location': instance.location,
      'rating': instance.rating,
      'review': instance.review,
      'imageUrl': instance.imageUrl,
    };
