// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'jadwal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Jadwal _$JadwalFromJson(Map<String, dynamic> json) {
  return _Jadwal.fromJson(json);
}

/// @nodoc
class _$JadwalTearOff {
  const _$JadwalTearOff();

  _Jadwal call(
      {required int id,
      DateTime? from,
      DateTime? until,
      Status? status = Status.waiting}) {
    return _Jadwal(
      id: id,
      from: from,
      until: until,
      status: status,
    );
  }

  Jadwal fromJson(Map<String, Object?> json) {
    return Jadwal.fromJson(json);
  }
}

/// @nodoc
const $Jadwal = _$JadwalTearOff();

/// @nodoc
mixin _$Jadwal {
  int get id => throw _privateConstructorUsedError;
  DateTime? get from => throw _privateConstructorUsedError;
  DateTime? get until => throw _privateConstructorUsedError;
  Status? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JadwalCopyWith<Jadwal> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JadwalCopyWith<$Res> {
  factory $JadwalCopyWith(Jadwal value, $Res Function(Jadwal) then) =
      _$JadwalCopyWithImpl<$Res>;
  $Res call({int id, DateTime? from, DateTime? until, Status? status});
}

/// @nodoc
class _$JadwalCopyWithImpl<$Res> implements $JadwalCopyWith<$Res> {
  _$JadwalCopyWithImpl(this._value, this._then);

  final Jadwal _value;
  // ignore: unused_field
  final $Res Function(Jadwal) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? from = freezed,
    Object? until = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      until: until == freezed
          ? _value.until
          : until // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
    ));
  }
}

/// @nodoc
abstract class _$JadwalCopyWith<$Res> implements $JadwalCopyWith<$Res> {
  factory _$JadwalCopyWith(_Jadwal value, $Res Function(_Jadwal) then) =
      __$JadwalCopyWithImpl<$Res>;
  @override
  $Res call({int id, DateTime? from, DateTime? until, Status? status});
}

/// @nodoc
class __$JadwalCopyWithImpl<$Res> extends _$JadwalCopyWithImpl<$Res>
    implements _$JadwalCopyWith<$Res> {
  __$JadwalCopyWithImpl(_Jadwal _value, $Res Function(_Jadwal) _then)
      : super(_value, (v) => _then(v as _Jadwal));

  @override
  _Jadwal get _value => super._value as _Jadwal;

  @override
  $Res call({
    Object? id = freezed,
    Object? from = freezed,
    Object? until = freezed,
    Object? status = freezed,
  }) {
    return _then(_Jadwal(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      until: until == freezed
          ? _value.until
          : until // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Jadwal implements _Jadwal {
  const _$_Jadwal(
      {required this.id, this.from, this.until, this.status = Status.waiting});

  factory _$_Jadwal.fromJson(Map<String, dynamic> json) =>
      _$$_JadwalFromJson(json);

  @override
  final int id;
  @override
  final DateTime? from;
  @override
  final DateTime? until;
  @JsonKey()
  @override
  final Status? status;

  @override
  String toString() {
    return 'Jadwal(id: $id, from: $from, until: $until, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Jadwal &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.from, from) &&
            const DeepCollectionEquality().equals(other.until, until) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(from),
      const DeepCollectionEquality().hash(until),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$JadwalCopyWith<_Jadwal> get copyWith =>
      __$JadwalCopyWithImpl<_Jadwal>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JadwalToJson(this);
  }
}

abstract class _Jadwal implements Jadwal {
  const factory _Jadwal(
      {required int id,
      DateTime? from,
      DateTime? until,
      Status? status}) = _$_Jadwal;

  factory _Jadwal.fromJson(Map<String, dynamic> json) = _$_Jadwal.fromJson;

  @override
  int get id;
  @override
  DateTime? get from;
  @override
  DateTime? get until;
  @override
  Status? get status;
  @override
  @JsonKey(ignore: true)
  _$JadwalCopyWith<_Jadwal> get copyWith => throw _privateConstructorUsedError;
}
