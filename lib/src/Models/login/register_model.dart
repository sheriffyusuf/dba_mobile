import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_model.freezed.dart';
part 'register_model.g.dart';

@freezed
class RegisterModel with _$RegisterModel {
  const factory RegisterModel({
    int? id,
    String? name,
    DateTime? dateofbirth,
    String? age,
    String? gender,
    String? address,
    String? email,
    DateTime? lastlogin,
    DateTime? createdat,
  }) = _RegisterModel;

  factory RegisterModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterModelFromJson(json);

  // Map<String, dynamic> toJsodsn() => this.toJson();
}
