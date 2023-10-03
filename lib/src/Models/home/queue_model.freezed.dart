// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'queue_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QueueModel _$QueueModelFromJson(Map<String, dynamic> json) {
  return _QueueModel.fromJson(json);
}

/// @nodoc
mixin _$QueueModel {
  String? get id => throw _privateConstructorUsedError;
  set id(String? value) => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  set name(String? value) => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  set phone(String? value) => throw _privateConstructorUsedError;
  String? get count => throw _privateConstructorUsedError;
  set count(String? value) => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  set status(String? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QueueModelCopyWith<QueueModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueueModelCopyWith<$Res> {
  factory $QueueModelCopyWith(
          QueueModel value, $Res Function(QueueModel) then) =
      _$QueueModelCopyWithImpl<$Res, QueueModel>;
  @useResult
  $Res call(
      {String? id, String? name, String? phone, String? count, String? status});
}

/// @nodoc
class _$QueueModelCopyWithImpl<$Res, $Val extends QueueModel>
    implements $QueueModelCopyWith<$Res> {
  _$QueueModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? count = freezed,
    Object? status = freezed,
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
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QueueModelImplCopyWith<$Res>
    implements $QueueModelCopyWith<$Res> {
  factory _$$QueueModelImplCopyWith(
          _$QueueModelImpl value, $Res Function(_$QueueModelImpl) then) =
      __$$QueueModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id, String? name, String? phone, String? count, String? status});
}

/// @nodoc
class __$$QueueModelImplCopyWithImpl<$Res>
    extends _$QueueModelCopyWithImpl<$Res, _$QueueModelImpl>
    implements _$$QueueModelImplCopyWith<$Res> {
  __$$QueueModelImplCopyWithImpl(
      _$QueueModelImpl _value, $Res Function(_$QueueModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? count = freezed,
    Object? status = freezed,
  }) {
    return _then(_$QueueModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QueueModelImpl implements _QueueModel {
  _$QueueModelImpl(
      {required this.id,
      required this.name,
      required this.phone,
      required this.count,
      required this.status});

  factory _$QueueModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QueueModelImplFromJson(json);

  @override
  String? id;
  @override
  String? name;
  @override
  String? phone;
  @override
  String? count;
  @override
  String? status;

  @override
  String toString() {
    return 'QueueModel(id: $id, name: $name, phone: $phone, count: $count, status: $status)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QueueModelImplCopyWith<_$QueueModelImpl> get copyWith =>
      __$$QueueModelImplCopyWithImpl<_$QueueModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QueueModelImplToJson(
      this,
    );
  }
}

abstract class _QueueModel implements QueueModel {
  factory _QueueModel(
      {required String? id,
      required String? name,
      required String? phone,
      required String? count,
      required String? status}) = _$QueueModelImpl;

  factory _QueueModel.fromJson(Map<String, dynamic> json) =
      _$QueueModelImpl.fromJson;

  @override
  String? get id;
  set id(String? value);
  @override
  String? get name;
  set name(String? value);
  @override
  String? get phone;
  set phone(String? value);
  @override
  String? get count;
  set count(String? value);
  @override
  String? get status;
  set status(String? value);
  @override
  @JsonKey(ignore: true)
  _$$QueueModelImplCopyWith<_$QueueModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
