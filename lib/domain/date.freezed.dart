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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date, double temperature) temperature,
    required TResult Function(DateTime date, WeatherSymbol symbol) symbol,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime date, double temperature)? temperature,
    TResult Function(DateTime date, WeatherSymbol symbol)? symbol,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date, double temperature)? temperature,
    TResult Function(DateTime date, WeatherSymbol symbol)? symbol,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Temperature value) temperature,
    required TResult Function(_Symbol value) symbol,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Temperature value)? temperature,
    TResult Function(_Symbol value)? symbol,
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherDateCopyWith<WeatherDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherDateCopyWith<$Res> {
  factory $WeatherDateCopyWith(
          WeatherDate value, $Res Function(WeatherDate) then) =
      _$WeatherDateCopyWithImpl<$Res>;
  $Res call({DateTime date});
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
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_TemperatureCopyWith<$Res>
    implements $WeatherDateCopyWith<$Res> {
  factory _$$_TemperatureCopyWith(
          _$_Temperature value, $Res Function(_$_Temperature) then) =
      __$$_TemperatureCopyWithImpl<$Res>;
  @override
  $Res call({DateTime date, double temperature});
}

/// @nodoc
class __$$_TemperatureCopyWithImpl<$Res> extends _$WeatherDateCopyWithImpl<$Res>
    implements _$$_TemperatureCopyWith<$Res> {
  __$$_TemperatureCopyWithImpl(
      _$_Temperature _value, $Res Function(_$_Temperature) _then)
      : super(_value, (v) => _then(v as _$_Temperature));

  @override
  _$_Temperature get _value => super._value as _$_Temperature;

  @override
  $Res call({
    Object? date = freezed,
    Object? temperature = freezed,
  }) {
    return _then(_$_Temperature(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      temperature: temperature == freezed
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_Temperature implements _Temperature {
  _$_Temperature({required this.date, required this.temperature});

  @override
  final DateTime date;
  @override
  final double temperature;

  @override
  String toString() {
    return 'WeatherDate.temperature(date: $date, temperature: $temperature)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Temperature &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality()
                .equals(other.temperature, temperature));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(temperature));

  @JsonKey(ignore: true)
  @override
  _$$_TemperatureCopyWith<_$_Temperature> get copyWith =>
      __$$_TemperatureCopyWithImpl<_$_Temperature>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date, double temperature) temperature,
    required TResult Function(DateTime date, WeatherSymbol symbol) symbol,
  }) {
    return temperature(date, this.temperature);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime date, double temperature)? temperature,
    TResult Function(DateTime date, WeatherSymbol symbol)? symbol,
  }) {
    return temperature?.call(date, this.temperature);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date, double temperature)? temperature,
    TResult Function(DateTime date, WeatherSymbol symbol)? symbol,
    required TResult orElse(),
  }) {
    if (temperature != null) {
      return temperature(date, this.temperature);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Temperature value) temperature,
    required TResult Function(_Symbol value) symbol,
  }) {
    return temperature(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Temperature value)? temperature,
    TResult Function(_Symbol value)? symbol,
  }) {
    return temperature?.call(this);
  }
}

abstract class _Temperature implements WeatherDate {
  factory _Temperature(
      {required final DateTime date,
      required final double temperature}) = _$_Temperature;

  @override
  DateTime get date;
  double get temperature;
  @override
  @JsonKey(ignore: true)
  _$$_TemperatureCopyWith<_$_Temperature> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SymbolCopyWith<$Res> implements $WeatherDateCopyWith<$Res> {
  factory _$$_SymbolCopyWith(_$_Symbol value, $Res Function(_$_Symbol) then) =
      __$$_SymbolCopyWithImpl<$Res>;
  @override
  $Res call({DateTime date, WeatherSymbol symbol});
}

/// @nodoc
class __$$_SymbolCopyWithImpl<$Res> extends _$WeatherDateCopyWithImpl<$Res>
    implements _$$_SymbolCopyWith<$Res> {
  __$$_SymbolCopyWithImpl(_$_Symbol _value, $Res Function(_$_Symbol) _then)
      : super(_value, (v) => _then(v as _$_Symbol));

  @override
  _$_Symbol get _value => super._value as _$_Symbol;

  @override
  $Res call({
    Object? date = freezed,
    Object? symbol = freezed,
  }) {
    return _then(_$_Symbol(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as WeatherSymbol,
    ));
  }
}

/// @nodoc

class _$_Symbol implements _Symbol {
  _$_Symbol({required this.date, required this.symbol});

  @override
  final DateTime date;
  @override
  final WeatherSymbol symbol;

  @override
  String toString() {
    return 'WeatherDate.symbol(date: $date, symbol: $symbol)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Symbol &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.symbol, symbol));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(symbol));

  @JsonKey(ignore: true)
  @override
  _$$_SymbolCopyWith<_$_Symbol> get copyWith =>
      __$$_SymbolCopyWithImpl<_$_Symbol>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date, double temperature) temperature,
    required TResult Function(DateTime date, WeatherSymbol symbol) symbol,
  }) {
    return symbol(date, this.symbol);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime date, double temperature)? temperature,
    TResult Function(DateTime date, WeatherSymbol symbol)? symbol,
  }) {
    return symbol?.call(date, this.symbol);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date, double temperature)? temperature,
    TResult Function(DateTime date, WeatherSymbol symbol)? symbol,
    required TResult orElse(),
  }) {
    if (symbol != null) {
      return symbol(date, this.symbol);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Temperature value) temperature,
    required TResult Function(_Symbol value) symbol,
  }) {
    return symbol(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Temperature value)? temperature,
    TResult Function(_Symbol value)? symbol,
  }) {
    return symbol?.call(this);
  }
}

abstract class _Symbol implements WeatherDate {
  factory _Symbol(
      {required final DateTime date,
      required final WeatherSymbol symbol}) = _$_Symbol;

  @override
  DateTime get date;
  WeatherSymbol get symbol;
  @override
  @JsonKey(ignore: true)
  _$$_SymbolCopyWith<_$_Symbol> get copyWith =>
      throw _privateConstructorUsedError;
}
