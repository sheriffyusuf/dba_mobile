// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterModel _$$_RegisterModelFromJson(Map<String, dynamic> json) =>
    _$_RegisterModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      dateofbirth: json['dateofbirth'] == null
          ? null
          : DateTime.parse(json['dateofbirth'] as String),
      age: json['age'] as String?,
      gender: json['gender'] as String?,
      address: json['address'] as String?,
      email: json['email'] as String?,
      lastlogin: json['lastlogin'] == null
          ? null
          : DateTime.parse(json['lastlogin'] as String),
      createdat: json['createdat'] == null
          ? null
          : DateTime.parse(json['createdat'] as String),
    );

Map<String, dynamic> _$$_RegisterModelToJson(_$_RegisterModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'dateofbirth': instance.dateofbirth?.toIso8601String(),
      'age': instance.age,
      'gender': instance.gender,
      'address': instance.address,
      'email': instance.email,
      'lastlogin': instance.lastlogin?.toIso8601String(),
      'createdat': instance.createdat?.toIso8601String(),
    };
