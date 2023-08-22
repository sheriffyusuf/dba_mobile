import 'package:freezed_annotation/freezed_annotation.dart';

part 'diagnostic_model.freezed.dart';
part 'diagnostic_model.g.dart';

@freezed
class DiagnosticModel with _$DiagnosticModel {
  const factory DiagnosticModel({
    String? id,
    String? name,
    String? discription,
    String? price,
    String? imageUrl,
  }) = _DiagnosticModel;

  factory DiagnosticModel.fromJson(Map<String, dynamic> json) =>
      _$DiagnosticModelFromJson(json);
}
