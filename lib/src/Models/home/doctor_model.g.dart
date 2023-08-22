// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DoctorModel _$$_DoctorModelFromJson(Map<String, dynamic> json) =>
    _$_DoctorModel(
      id: json['id'] as String?,
      name: json['name'] as String?,
      type: json['type'] as String?,
      hospital: json['hospital'] as String?,
      rating: json['rating'] as String?,
      rewiews: json['rewiews'] as String?,
      yearsOfExpe: json['yearsOfExpe'] as String?,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$_DoctorModelToJson(_$_DoctorModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'hospital': instance.hospital,
      'rating': instance.rating,
      'rewiews': instance.rewiews,
      'yearsOfExpe': instance.yearsOfExpe,
      'imageUrl': instance.imageUrl,
    };
