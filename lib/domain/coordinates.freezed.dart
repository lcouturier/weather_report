// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'coordinates.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherCoordinates {
  double get lat => throw _privateConstructorUsedError;
  double get lon => throw _privateConstructorUsedError;
  List<WeatherDate> get dates => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherCoordinatesCopyWith<WeatherCoordinates> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherCoordinatesCopyWith<$Res> {
  factory $WeatherCoordinatesCopyWith(
          WeatherCoordinates value, $Res Function(WeatherCoordinates) then) =
      _$WeatherCoordinatesCopyWithImpl<$Res>;
  $Res call({double lat, double lon, List<WeatherDate> dates});
}

/// @nodoc
class _$WeatherCoordinatesCopyWithImpl<$Res>
    implements $WeatherCoordinatesCopyWith<$Res> {
  _$WeatherCoordinatesCopyWithImpl(this._value, this._then);

  final WeatherCoordinates _value;
  // ignore: unused_field
  final $Res Function(WeatherCoordinates) _then;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lon = freezed,
    Object? dates = freezed,
  }) {
    return _then(_value.copyWith(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      dates: dates == freezed
          ? _value.dates
          : dates // ignore: cast_nullable_to_non_nullable
              as List<WeatherDate>,
    ));
  }
}

/// @nodoc
abstract class _$$_WeatherCoordinatesCopyWith<$Res>
    implements $WeatherCoordinatesCopyWith<$Res> {
  factory _$$_WeatherCoordinatesCopyWith(_$_WeatherCoordinates value,
          $Res Function(_$_WeatherCoordinates) then) =
      __$$_WeatherCoordinatesCopyWithImpl<$Res>;
  @override
  $Res call({double lat, double lon, List<WeatherDate> dates});
}

/// @nodoc
class __$$_WeatherCoordinatesCopyWithImpl<$Res>
    extends _$WeatherCoordinatesCopyWithImpl<$Res>
    implements _$$_WeatherCoordinatesCopyWith<$Res> {
  __$$_WeatherCoordinatesCopyWithImpl(
      _$_WeatherCoordinates _value, $Res Function(_$_WeatherCoordinates) _then)
      : super(_value, (v) => _then(v as _$_WeatherCoordinates));

  @override
  _$_WeatherCoordinates get _value => super._value as _$_WeatherCoordinates;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lon = freezed,
    Object? dates = freezed,
  }) {
    return _then(_$_WeatherCoordinates(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      dates: dates == freezed
          ? _value._dates
          : dates // ignore: cast_nullable_to_non_nullable
              as List<WeatherDate>,
    ));
  }
}

/// @nodoc

class _$_WeatherCoordinates implements _WeatherCoordinates {
  _$_WeatherCoordinates(
      {required this.lat,
      required this.lon,
      required final List<WeatherDate> dates})
      : _dates = dates;

  @override
  final double lat;
  @override
  final double lon;
  final List<WeatherDate> _dates;
  @override
  List<WeatherDate> get dates {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dates);
  }

  @override
  String toString() {
    return 'WeatherCoordinates(lat: $lat, lon: $lon, dates: $dates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherCoordinates &&
            const DeepCollectionEquality().equals(other.lat, lat) &&
            const DeepCollectionEquality().equals(other.lon, lon) &&
            const DeepCollectionEquality().equals(other._dates, _dates));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(lat),
      const DeepCollectionEquality().hash(lon),
      const DeepCollectionEquality().hash(_dates));

  @JsonKey(ignore: true)
  @override
  _$$_WeatherCoordinatesCopyWith<_$_WeatherCoordinates> get copyWith =>
      __$$_WeatherCoordinatesCopyWithImpl<_$_WeatherCoordinates>(
          this, _$identity);
}

abstract class _WeatherCoordinates implements WeatherCoordinates {
  factory _WeatherCoordinates(
      {required final double lat,
      required final double lon,
      required final List<WeatherDate> dates}) = _$_WeatherCoordinates;

  @override
  double get lat;
  @override
  double get lon;
  @override
  List<WeatherDate> get dates;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherCoordinatesCopyWith<_$_WeatherCoordinates> get copyWith =>
      throw _privateConstructorUsedError;
}
