// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'date.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherDate {
  DateTime get date => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherDateCopyWith<WeatherDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherDateCopyWith<$Res> {
  factory $WeatherDateCopyWith(
          WeatherDate value, $Res Function(WeatherDate) then) =
      _$WeatherDateCopyWithImpl<$Res>;
  $Res call({DateTime date, double value});
}

/// @nodoc
class _$WeatherDateCopyWithImpl<$Res> implements $WeatherDateCopyWith<$Res> {
  _$WeatherDateCopyWithImpl(this._value, this._then);

  final WeatherDate _value;
  // ignore: unused_field
  final $Res Function(WeatherDate) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_WeatherDateCopyWith<$Res>
    implements $WeatherDateCopyWith<$Res> {
  factory _$$_WeatherDateCopyWith(
          _$_WeatherDate value, $Res Function(_$_WeatherDate) then) =
      __$$_WeatherDateCopyWithImpl<$Res>;
  @override
  $Res call({DateTime date, double value});
}

/// @nodoc
class __$$_WeatherDateCopyWithImpl<$Res> extends _$WeatherDateCopyWithImpl<$Res>
    implements _$$_WeatherDateCopyWith<$Res> {
  __$$_WeatherDateCopyWithImpl(
      _$_WeatherDate _value, $Res Function(_$_WeatherDate) _then)
      : super(_value, (v) => _then(v as _$_WeatherDate));

  @override
  _$_WeatherDate get _value => super._value as _$_WeatherDate;

  @override
  $Res call({
    Object? date = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_WeatherDate(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_WeatherDate implements _WeatherDate {
  _$_WeatherDate({required this.date, required this.value});

  @override
  final DateTime date;
  @override
  final double value;

  @override
  String toString() {
    return 'WeatherDate(date: $date, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherDate &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_WeatherDateCopyWith<_$_WeatherDate> get copyWith =>
      __$$_WeatherDateCopyWithImpl<_$_WeatherDate>(this, _$identity);
}

abstract class _WeatherDate implements WeatherDate {
  factory _WeatherDate(
      {required final DateTime date,
      required final double value}) = _$_WeatherDate;

  @override
  DateTime get date;
  @override
  double get value;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherDateCopyWith<_$_WeatherDate> get copyWith =>
      throw _privateConstructorUsedError;
}
