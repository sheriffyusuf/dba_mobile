import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_model.freezed.dart';
part 'history_model.g.dart';

@unfreezed
class HistoryModel with _$HistoryModel {
  factory HistoryModel({
    required String? id,
   required String? name,
   required String? phone,
   required String? symptoms,
   required String? time,
   required String? date,
   required String? docId,
   required String? status,
  }) = _HistoryModel;

  factory HistoryModel.fromJson(Map<String, Object?> json)
      => _$HistoryModelFromJson(json);
}
/* 
  '': nameController.text,
                      '': phoneController.text,
                      '': symptomsController.text,
                      '': selectedTime.value,
                      '': selectedDate.value,
 */