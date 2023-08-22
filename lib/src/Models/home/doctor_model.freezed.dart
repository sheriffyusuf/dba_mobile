// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DoctorModel _$DoctorModelFromJson(Map<String, dynamic> json) {
  return _DoctorModel.fromJson(json);
}

/// @nodoc
mixin _$DoctorModel {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get hospital => throw _privateConstructorUsedError;
  String? get rating => throw _privateConstructorUsedError;
  String? get rewiews => throw _privateConstructorUsedError;
  String? get yearsOfExpe => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DoctorModelCopyWith<DoctorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorModelCopyWith<$Res> {
  factory $DoctorModelCopyWith(
          DoctorModel value, $Res Function(DoctorModel) then) =
      _$DoctorModelCopyWithImpl<$Res, DoctorModel>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? type,
      String? hospital,
      String? rating,
      String? rewiews,
      String? yearsOfExpe,
      String? imageUrl});
}

/// @nodoc
class _$DoctorModelCopyWithImpl<$Res, $Val extends DoctorModel>
    implements $DoctorModelCopyWith<$Res> {
  _$DoctorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? hospital = freezed,
    Object? rating = freezed,
    Object? rewiews = freezed,
    Object? yearsOfExpe = freezed,
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      hospital: freezed == hospital
          ? _value.hospital
          : hospital // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      rewiews: freezed == rewiews
          ? _value.rewiews
          : rewiews // ignore: cast_nullable_to_non_nullable
              as String?,
      yearsOfExpe: freezed == yearsOfExpe
          ? _value.yearsOfExpe
          : yearsOfExpe // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DoctorModelCopyWith<$Res>
    implements $DoctorModelCopyWith<$Res> {
  factory _$$_DoctorModelCopyWith(
          _$_DoctorModel value, $Res Function(_$_DoctorModel) then) =
      __$$_DoctorModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? type,
      String? hospital,
      String? rating,
      String? rewiews,
      String? yearsOfExpe,
      String? imageUrl});
}

/// @nodoc
class __$$_DoctorModelCopyWithImpl<$Res>
    extends _$DoctorModelCopyWithImpl<$Res, _$_DoctorModel>
    implements _$$_DoctorModelCopyWith<$Res> {
  __$$_DoctorModelCopyWithImpl(
      _$_DoctorModel _value, $Res Function(_$_DoctorModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? hospital = freezed,
    Object? rating = freezed,
    Object? rewiews = freezed,
    Object? yearsOfExpe = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_$_DoctorModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      hospital: freezed == hospital
          ? _value.hospital
          : hospital // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      rewiews: freezed == rewiews
          ? _value.rewiews
          : rewiews // ignore: cast_nullable_to_non_nullable
              as String?,
      yearsOfExpe: freezed == yearsOfExpe
          ? _value.yearsOfExpe
          : yearsOfExpe // ignore: cast_nullable_to_non_nullable
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
class _$_DoctorModel implements _DoctorModel {
  const _$_DoctorModel(
      {this.id,
      this.name,
      this.type,
      this.hospital,
      this.rating,
      this.rewiews,
      this.yearsOfExpe,
      this.imageUrl});

  factory _$_DoctorModel.fromJson(Map<String, dynamic> json) =>
      _$$_DoctorModelFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? type;
  @override
  final String? hospital;
  @override
  final String? rating;
  @override
  final String? rewiews;
  @override
  final String? yearsOfExpe;
  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'DoctorModel(id: $id, name: $name, type: $type, hospital: $hospital, rating: $rating, rewiews: $rewiews, yearsOfExpe: $yearsOfExpe, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DoctorModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.hospital, hospital) ||
                other.hospital == hospital) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.rewiews, rewiews) || other.rewiews == rewiews) &&
            (identical(other.yearsOfExpe, yearsOfExpe) ||
                other.yearsOfExpe == yearsOfExpe) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, type, hospital, rating,
      rewiews, yearsOfExpe, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DoctorModelCopyWith<_$_DoctorModel> get copyWith =>
      __$$_DoctorModelCopyWithImpl<_$_DoctorModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DoctorModelToJson(
      this,
    );
  }
}

abstract class _DoctorModel implements DoctorModel {
  const factory _DoctorModel(
      {final String? id,
      final String? name,
      final String? type,
      final String? hospital,
      final String? rating,
      final String? rewiews,
      final String? yearsOfExpe,
      final String? imageUrl}) = _$_DoctorModel;

  factory _DoctorModel.fromJson(Map<String, dynamic> json) =
      _$_DoctorModel.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get type;
  @override
  String? get hospital;
  @override
  String? get rating;
  @override
  String? get rewiews;
  @override
  String? get yearsOfExpe;
  @override
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_DoctorModelCopyWith<_$_DoctorModel> get copyWith =>
      throw _privateConstructorUsedError;
}
