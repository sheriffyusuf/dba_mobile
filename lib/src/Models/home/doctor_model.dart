import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctor_model.freezed.dart';
part 'doctor_model.g.dart';

@unfreezed
class DoctorModel with _$DoctorModel {
  factory DoctorModel({
    required String? id,
   required String? name,
   required String? speciality,
   required String? yearsOfExpe,
   required String? availability,
   required String? imageUrl,
   required String? hospital,
   required String? gender,
   required String? nubCount,
  }) = _DoctorModel;

  factory DoctorModel.fromJson(Map<String, Object?> json)
      => _$DoctorModelFromJson(json);
}