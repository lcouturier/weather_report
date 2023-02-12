// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherItem {
  DateTime get date => throw _privateConstructorUsedError;
  double get temp => throw _privateConstructorUsedError;
  WeatherSymbol get symbol => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherItemCopyWith<WeatherItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherItemCopyWith<$Res> {
  factory $WeatherItemCopyWith(
          WeatherItem value, $Res Function(WeatherItem) then) =
      _$WeatherItemCopyWithImpl<$Res>;
  $Res call(
      {DateTime date, double temp, WeatherSymbol symbol, String description});
}

/// @nodoc
class _$WeatherItemCopyWithImpl<$Res> implements $WeatherItemCopyWith<$Res> {
  _$WeatherItemCopyWithImpl(this._value, this._then);

  final WeatherItem _value;
  // ignore: unused_field
  final $Res Function(WeatherItem) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? temp = freezed,
    Object? symbol = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as WeatherSymbol,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_WeatherItemCopyWith<$Res>
    implements $WeatherItemCopyWith<$Res> {
  factory _$$_WeatherItemCopyWith(
          _$_WeatherItem value, $Res Function(_$_WeatherItem) then) =
      __$$_WeatherItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime date, double temp, WeatherSymbol symbol, String description});
}

/// @nodoc
class __$$_WeatherItemCopyWithImpl<$Res> extends _$WeatherItemCopyWithImpl<$Res>
    implements _$$_WeatherItemCopyWith<$Res> {
  __$$_WeatherItemCopyWithImpl(
      _$_WeatherItem _value, $Res Function(_$_WeatherItem) _then)
      : super(_value, (v) => _then(v as _$_WeatherItem));

  @override
  _$_WeatherItem get _value => super._value as _$_WeatherItem;

  @override
  $Res call({
    Object? date = freezed,
    Object? temp = freezed,
    Object? symbol = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_WeatherItem(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as WeatherSymbol,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WeatherItem implements _WeatherItem {
  _$_WeatherItem(
      {required this.date,
      required this.temp,
      required this.symbol,
      required this.description});

  @override
  final DateTime date;
  @override
  final double temp;
  @override
  final WeatherSymbol symbol;
  @override
  final String description;

  @override
  String toString() {
    return 'WeatherItem(date: $date, temp: $temp, symbol: $symbol, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherItem &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.temp, temp) &&
            const DeepCollectionEquality().equals(other.symbol, symbol) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(temp),
      const DeepCollectionEquality().hash(symbol),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$_WeatherItemCopyWith<_$_WeatherItem> get copyWith =>
      __$$_WeatherItemCopyWithImpl<_$_WeatherItem>(this, _$identity);
}

abstract class _WeatherItem implements WeatherItem {
  factory _WeatherItem(
      {required final DateTime date,
      required final double temp,
      required final WeatherSymbol symbol,
      required final String description}) = _$_WeatherItem;

  @override
  DateTime get date;
  @override
  double get temp;
  @override
  WeatherSymbol get symbol;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherItemCopyWith<_$_WeatherItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WeatherItemDescription {
  DateTime get date => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherItemDescriptionCopyWith<WeatherItemDescription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherItemDescriptionCopyWith<$Res> {
  factory $WeatherItemDescriptionCopyWith(WeatherItemDescription value,
          $Res Function(WeatherItemDescription) then) =
      _$WeatherItemDescriptionCopyWithImpl<$Res>;
  $Res call({DateTime date, String description});
}

/// @nodoc
class _$WeatherItemDescriptionCopyWithImpl<$Res>
    implements $WeatherItemDescriptionCopyWith<$Res> {
  _$WeatherItemDescriptionCopyWithImpl(this._value, this._then);

  final WeatherItemDescription _value;
  // ignore: unused_field
  final $Res Function(WeatherItemDescription) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_WeatherItemDescriptionCopyWith<$Res>
    implements $WeatherItemDescriptionCopyWith<$Res> {
  factory _$$_WeatherItemDescriptionCopyWith(_$_WeatherItemDescription value,
          $Res Function(_$_WeatherItemDescription) then) =
      __$$_WeatherItemDescriptionCopyWithImpl<$Res>;
  @override
  $Res call({DateTime date, String description});
}

/// @nodoc
class __$$_WeatherItemDescriptionCopyWithImpl<$Res>
    extends _$WeatherItemDescriptionCopyWithImpl<$Res>
    implements _$$_WeatherItemDescriptionCopyWith<$Res> {
  __$$_WeatherItemDescriptionCopyWithImpl(_$_WeatherItemDescription _value,
      $Res Function(_$_WeatherItemDescription) _then)
      : super(_value, (v) => _then(v as _$_WeatherItemDescription));

  @override
  _$_WeatherItemDescription get _value =>
      super._value as _$_WeatherItemDescription;

  @override
  $Res call({
    Object? date = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_WeatherItemDescription(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WeatherItemDescription implements _WeatherItemDescription {
  _$_WeatherItemDescription({required this.date, required this.description});

  @override
  final DateTime date;
  @override
  final String description;

  @override
  String toString() {
    return 'WeatherItemDescription(date: $date, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherItemDescription &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$_WeatherItemDescriptionCopyWith<_$_WeatherItemDescription> get copyWith =>
      __$$_WeatherItemDescriptionCopyWithImpl<_$_WeatherItemDescription>(
          this, _$identity);
}

abstract class _WeatherItemDescription implements WeatherItemDescription {
  factory _WeatherItemDescription(
      {required final DateTime date,
      required final String description}) = _$_WeatherItemDescription;

  @override
  DateTime get date;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherItemDescriptionCopyWith<_$_WeatherItemDescription> get copyWith =>
      throw _privateConstructorUsedError;
}
