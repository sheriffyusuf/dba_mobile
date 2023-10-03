// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterModelImpl _$$RegisterModelImplFromJson(Map<String, dynamic> json) =>
    _$RegisterModelImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      dateofbirth: json['dateofbirth'] as String?,
      age: json['age'] as String?,
      gender: json['gender'] as String?,
      address: json['address'] as String?,
      email: json['email'] as String?,
      lastlogin: json['lastlogin'] as String?,
      createdat: json['createdat'] as String?,
    );

Map<String, dynamic> _$$RegisterModelImplToJson(_$RegisterModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'dateofbirth': instance.dateofbirth,
      'age': instance.age,
      'gender': instance.gender,
      'address': instance.address,
      'email': instance.email,
      'lastlogin': instance.lastlogin,
      'createdat': instance.createdat,
    };
