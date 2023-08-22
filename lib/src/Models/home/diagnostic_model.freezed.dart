// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diagnostic_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DiagnosticModel _$DiagnosticModelFromJson(Map<String, dynamic> json) {
  return _DiagnosticModel.fromJson(json);
}

/// @nodoc
mixin _$DiagnosticModel {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get discription => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiagnosticModelCopyWith<DiagnosticModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiagnosticModelCopyWith<$Res> {
  factory $DiagnosticModelCopyWith(
          DiagnosticModel value, $Res Function(DiagnosticModel) then) =
      _$DiagnosticModelCopyWithImpl<$Res, DiagnosticModel>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? discription,
      String? price,
      String? imageUrl});
}

/// @nodoc
class _$DiagnosticModelCopyWithImpl<$Res, $Val extends DiagnosticModel>
    implements $DiagnosticModelCopyWith<$Res> {
  _$DiagnosticModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? discription = freezed,
    Object? price = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      discription: freezed == discription
          ? _value.discription
          : discription // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DiagnosticModelCopyWith<$Res>
    implements $DiagnosticModelCopyWith<$Res> {
  factory _$$_DiagnosticModelCopyWith(
          _$_DiagnosticModel value, $Res Function(_$_DiagnosticModel) then) =
      __$$_DiagnosticModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? discription,
      String? price,
      String? imageUrl});
}

/// @nodoc
class __$$_DiagnosticModelCopyWithImpl<$Res>
    extends _$DiagnosticModelCopyWithImpl<$Res, _$_DiagnosticModel>
    implements _$$_DiagnosticModelCopyWith<$Res> {
  __$$_DiagnosticModelCopyWithImpl(
      _$_DiagnosticModel _value, $Res Function(_$_DiagnosticModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? discription = freezed,
    Object? price = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_$_DiagnosticModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      discription: freezed == discription
          ? _value.discription
          : discription // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DiagnosticModel implements _DiagnosticModel {
  const _$_DiagnosticModel(
      {this.id, this.name, this.discription, this.price, this.imageUrl});

  factory _$_DiagnosticModel.fromJson(Map<String, dynamic> json) =>
      _$$_DiagnosticModelFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? discription;
  @override
  final String? price;
  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'DiagnosticModel(id: $id, name: $name, discription: $discription, price: $price, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DiagnosticModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.discription, discription) ||
                other.discription == discription) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, discription, price, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DiagnosticModelCopyWith<_$_DiagnosticModel> get copyWith =>
      __$$_DiagnosticModelCopyWithImpl<_$_DiagnosticModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DiagnosticModelToJson(
      this,
    );
  }
}

abstract class _DiagnosticModel implements DiagnosticModel {
  const factory _DiagnosticModel(
      {final String? id,
      final String? name,
      final String? discription,
      final String? price,
      final String? imageUrl}) = _$_DiagnosticModel;

  factory _DiagnosticModel.fromJson(Map<String, dynamic> json) =
      _$_DiagnosticModel.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get discription;
  @override
  String? get price;
  @override
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_DiagnosticModelCopyWith<_$_DiagnosticModel> get copyWith =>
      throw _privateConstructorUsedError;
}
