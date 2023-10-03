// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HistoryModelImpl _$$HistoryModelImplFromJson(Map<String, dynamic> json) =>
    _$HistoryModelImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      symptoms: json['symptoms'] as String?,
      time: json['time'] as String?,
      date: json['date'] as String?,
      docId: json['docId'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$HistoryModelImplToJson(_$HistoryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'symptoms': instance.symptoms,
      'time': instance.time,
      'date': instance.date,
      'docId': instance.docId,
      'status': instance.status,
    };
