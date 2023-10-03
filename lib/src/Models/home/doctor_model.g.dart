// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DoctorModelImpl _$$DoctorModelImplFromJson(Map<String, dynamic> json) =>
    _$DoctorModelImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      speciality: json['speciality'] as String?,
      yearsOfExpe: json['yearsOfExpe'] as String?,
      availability: json['availability'] as String?,
      imageUrl: json['imageUrl'] as String?,
      hospital: json['hospital'] as String?,
      gender: json['gender'] as String?,
      nubCount: json['nubCount'] as String?,
    );

Map<String, dynamic> _$$DoctorModelImplToJson(_$DoctorModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'speciality': instance.speciality,
      'yearsOfExpe': instance.yearsOfExpe,
      'availability': instance.availability,
      'imageUrl': instance.imageUrl,
      'hospital': instance.hospital,
      'gender': instance.gender,
      'nubCount': instance.nubCount,
    };
