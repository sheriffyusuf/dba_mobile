// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hospital_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HospitalModel _$HospitalModelFromJson(Map<String, dynamic> json) {
  return _HospitalModel.fromJson(json);
}

/// @nodoc
mixin _$HospitalModel {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get rating => throw _privateConstructorUsedError;
  String? get review => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HospitalModelCopyWith<HospitalModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HospitalModelCopyWith<$Res> {
  factory $HospitalModelCopyWith(
          HospitalModel value, $Res Function(HospitalModel) then) =
      _$HospitalModelCopyWithImpl<$Res, HospitalModel>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? location,
      String? rating,
      String? review,
      String? imageUrl});
}

/// @nodoc
class _$HospitalModelCopyWithImpl<$Res, $Val extends HospitalModel>
    implements $HospitalModelCopyWith<$Res> {
  _$HospitalModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? location = freezed,
    Object? rating = freezed,
    Object? review = freezed,
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
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HospitalModelCopyWith<$Res>
    implements $HospitalModelCopyWith<$Res> {
  factory _$$_HospitalModelCopyWith(
          _$_HospitalModel value, $Res Function(_$_HospitalModel) then) =
      __$$_HospitalModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? location,
      String? rating,
      String? review,
      String? imageUrl});
}

/// @nodoc
class __$$_HospitalModelCopyWithImpl<$Res>
    extends _$HospitalModelCopyWithImpl<$Res, _$_HospitalModel>
    implements _$$_HospitalModelCopyWith<$Res> {
  __$$_HospitalModelCopyWithImpl(
      _$_HospitalModel _value, $Res Function(_$_HospitalModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? location = freezed,
    Object? rating = freezed,
    Object? review = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_$_HospitalModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
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
class _$_HospitalModel implements _HospitalModel {
  const _$_HospitalModel(
      {this.id,
      this.name,
      this.location,
      this.rating,
      this.review,
      this.imageUrl});

  factory _$_HospitalModel.fromJson(Map<String, dynamic> json) =>
      _$$_HospitalModelFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? location;
  @override
  final String? rating;
  @override
  final String? review;
  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'HospitalModel(id: $id, name: $name, location: $location, rating: $rating, review: $review, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HospitalModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.review, review) || other.review == review) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, location, rating, review, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HospitalModelCopyWith<_$_HospitalModel> get copyWith =>
      __$$_HospitalModelCopyWithImpl<_$_HospitalModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HospitalModelToJson(
      this,
    );
  }
}

abstract class _HospitalModel implements HospitalModel {
  const factory _HospitalModel(
      {final String? id,
      final String? name,
      final String? location,
      final String? rating,
      final String? review,
      final String? imageUrl}) = _$_HospitalModel;

  factory _HospitalModel.fromJson(Map<String, dynamic> json) =
      _$_HospitalModel.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get location;
  @override
  String? get rating;
  @override
  String? get review;
  @override
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_HospitalModelCopyWith<_$_HospitalModel> get copyWith =>
      throw _privateConstructorUsedError;
}
