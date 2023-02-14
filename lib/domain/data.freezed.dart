// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherData {
  String get parameter => throw _privateConstructorUsedError;
  List<WeatherCoordinates> get coordinates =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherDataCopyWith<WeatherData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherDataCopyWith<$Res> {
  factory $WeatherDataCopyWith(
          WeatherData value, $Res Function(WeatherData) then) =
      _$WeatherDataCopyWithImpl<$Res>;
  $Res call({String parameter, List<WeatherCoordinates> coordinates});
}

/// @nodoc
class _$WeatherDataCopyWithImpl<$Res> implements $WeatherDataCopyWith<$Res> {
  _$WeatherDataCopyWithImpl(this._value, this._then);

  final WeatherData _value;
  // ignore: unused_field
  final $Res Function(WeatherData) _then;

  @override
  $Res call({
    Object? parameter = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(_value.copyWith(
      parameter: parameter == freezed
          ? _value.parameter
          : parameter // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<WeatherCoordinates>,
    ));
  }
}

/// @nodoc
abstract class _$$_WeatherDataCopyWith<$Res>
    implements $WeatherDataCopyWith<$Res> {
  factory _$$_WeatherDataCopyWith(
          _$_WeatherData value, $Res Function(_$_WeatherData) then) =
      __$$_WeatherDataCopyWithImpl<$Res>;
  @override
  $Res call({String parameter, List<WeatherCoordinates> coordinates});
}

/// @nodoc
class __$$_WeatherDataCopyWithImpl<$Res> extends _$WeatherDataCopyWithImpl<$Res>
    implements _$$_WeatherDataCopyWith<$Res> {
  __$$_WeatherDataCopyWithImpl(
      _$_WeatherData _value, $Res Function(_$_WeatherData) _then)
      : super(_value, (v) => _then(v as _$_WeatherData));

  @override
  _$_WeatherData get _value => super._value as _$_WeatherData;

  @override
  $Res call({
    Object? parameter = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(_$_WeatherData(
      parameter: parameter == freezed
          ? _value.parameter
          : parameter // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: coordinates == freezed
          ? _value._coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<WeatherCoordinates>,
    ));
  }
}

/// @nodoc

class _$_WeatherData implements _WeatherData {
  _$_WeatherData(
      {required this.parameter,
      required final List<WeatherCoordinates> coordinates})
      : _coordinates = coordinates;

  @override
  final String parameter;
  final List<WeatherCoordinates> _coordinates;
  @override
  List<WeatherCoordinates> get coordinates {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coordinates);
  }

  @override
  String toString() {
    return 'WeatherData(parameter: $parameter, coordinates: $coordinates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherData &&
            const DeepCollectionEquality().equals(other.parameter, parameter) &&
            const DeepCollectionEquality()
                .equals(other._coordinates, _coordinates));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(parameter),
      const DeepCollectionEquality().hash(_coordinates));

  @JsonKey(ignore: true)
  @override
  _$$_WeatherDataCopyWith<_$_WeatherData> get copyWith =>
      __$$_WeatherDataCopyWithImpl<_$_WeatherData>(this, _$identity);
}

abstract class _WeatherData implements WeatherData {
  factory _WeatherData(
      {required final String parameter,
      required final List<WeatherCoordinates> coordinates}) = _$_WeatherData;

  @override
  String get parameter;
  @override
  List<WeatherCoordinates> get coordinates;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherDataCopyWith<_$_WeatherData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WeatherDatas {
  List<WeatherDate> get symbols => throw _privateConstructorUsedError;
  List<WeatherDate> get temperatures => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherDatasCopyWith<WeatherDatas> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherDatasCopyWith<$Res> {
  factory $WeatherDatasCopyWith(
          WeatherDatas value, $Res Function(WeatherDatas) then) =
      _$WeatherDatasCopyWithImpl<$Res>;
  $Res call({List<WeatherDate> symbols, List<WeatherDate> temperatures});
}

/// @nodoc
class _$WeatherDatasCopyWithImpl<$Res> implements $WeatherDatasCopyWith<$Res> {
  _$WeatherDatasCopyWithImpl(this._value, this._then);

  final WeatherDatas _value;
  // ignore: unused_field
  final $Res Function(WeatherDatas) _then;

  @override
  $Res call({
    Object? symbols = freezed,
    Object? temperatures = freezed,
  }) {
    return _then(_value.copyWith(
      symbols: symbols == freezed
          ? _value.symbols
          : symbols // ignore: cast_nullable_to_non_nullable
              as List<WeatherDate>,
      temperatures: temperatures == freezed
          ? _value.temperatures
          : temperatures // ignore: cast_nullable_to_non_nullable
              as List<WeatherDate>,
    ));
  }
}

/// @nodoc
abstract class _$$_WeatherDatasCopyWith<$Res>
    implements $WeatherDatasCopyWith<$Res> {
  factory _$$_WeatherDatasCopyWith(
          _$_WeatherDatas value, $Res Function(_$_WeatherDatas) then) =
      __$$_WeatherDatasCopyWithImpl<$Res>;
  @override
  $Res call({List<WeatherDate> symbols, List<WeatherDate> temperatures});
}

/// @nodoc
class __$$_WeatherDatasCopyWithImpl<$Res>
    extends _$WeatherDatasCopyWithImpl<$Res>
    implements _$$_WeatherDatasCopyWith<$Res> {
  __$$_WeatherDatasCopyWithImpl(
      _$_WeatherDatas _value, $Res Function(_$_WeatherDatas) _then)
      : super(_value, (v) => _then(v as _$_WeatherDatas));

  @override
  _$_WeatherDatas get _value => super._value as _$_WeatherDatas;

  @override
  $Res call({
    Object? symbols = freezed,
    Object? temperatures = freezed,
  }) {
    return _then(_$_WeatherDatas(
      symbols: symbols == freezed
          ? _value._symbols
          : symbols // ignore: cast_nullable_to_non_nullable
              as List<WeatherDate>,
      temperatures: temperatures == freezed
          ? _value._temperatures
          : temperatures // ignore: cast_nullable_to_non_nullable
              as List<WeatherDate>,
    ));
  }
}

/// @nodoc

class _$_WeatherDatas implements _WeatherDatas {
  _$_WeatherDatas(
      {required final List<WeatherDate> symbols,
      required final List<WeatherDate> temperatures})
      : _symbols = symbols,
        _temperatures = temperatures;

  final List<WeatherDate> _symbols;
  @override
  List<WeatherDate> get symbols {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_symbols);
  }

  final List<WeatherDate> _temperatures;
  @override
  List<WeatherDate> get temperatures {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_temperatures);
  }

  @override
  String toString() {
    return 'WeatherDatas(symbols: $symbols, temperatures: $temperatures)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherDatas &&
            const DeepCollectionEquality().equals(other._symbols, _symbols) &&
            const DeepCollectionEquality()
                .equals(other._temperatures, _temperatures));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_symbols),
      const DeepCollectionEquality().hash(_temperatures));

  @JsonKey(ignore: true)
  @override
  _$$_WeatherDatasCopyWith<_$_WeatherDatas> get copyWith =>
      __$$_WeatherDatasCopyWithImpl<_$_WeatherDatas>(this, _$identity);
}

abstract class _WeatherDatas implements WeatherDatas {
  factory _WeatherDatas(
      {required final List<WeatherDate> symbols,
      required final List<WeatherDate> temperatures}) = _$_WeatherDatas;

  @override
  List<WeatherDate> get symbols;
  @override
  List<WeatherDate> get temperatures;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherDatasCopyWith<_$_WeatherDatas> get copyWith =>
      throw _privateConstructorUsedError;
}
