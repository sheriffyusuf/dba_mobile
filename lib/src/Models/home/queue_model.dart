import 'package:freezed_annotation/freezed_annotation.dart';

part 'queue_model.freezed.dart';
part 'queue_model.g.dart';

@unfreezed
class QueueModel with _$QueueModel {
  factory QueueModel({
    required String? id,
    required String? name,
    required String? phone,
    required String? count,
    required String? status,
   
  }) = _QueueModel;

  factory QueueModel.fromJson(Map<String, Object?> json) =>
      _$QueueModelFromJson(json);
}
