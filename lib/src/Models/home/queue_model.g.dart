// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queue_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QueueModelImpl _$$QueueModelImplFromJson(Map<String, dynamic> json) =>
    _$QueueModelImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      count: json['count'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$QueueModelImplToJson(_$QueueModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'count': instance.count,
      'status': instance.status,
    };
