import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_model.freezed.dart';
part 'register_model.g.dart';

@unfreezed
class RegisterModel with _$RegisterModel {
  factory RegisterModel({
    required String? id,
    required String? name,
    required String? dateofbirth,
    required String? age,
    required String? gender,
    required String? address,
    required String? email,
    required String? lastlogin,
    required String? createdat,
  }) = _RegisterModel;

  factory RegisterModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterModelFromJson(json);

  // Map<String, dynamic> toJsodsn() => this.toJson();
}
