// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'data_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DataType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() temperature,
    required TResult Function() symbol,
    required TResult Function() none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? temperature,
    TResult Function()? symbol,
    TResult Function()? none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? temperature,
    TResult Function()? symbol,
    TResult Function()? none,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Temperature value) temperature,
    required TResult Function(_Symbol value) symbol,
    required TResult Function(_None value) none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Temperature value)? temperature,
    TResult Function(_Symbol value)? symbol,
    TResult Function(_None value)? none,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataTypeCopyWith<$Res> {
  factory $DataTypeCopyWith(DataType value, $Res Function(DataType) then) =
      _$DataTypeCopyWithImpl<$Res>;
}

/// @nodoc
class _$DataTypeCopyWithImpl<$Res> implements $DataTypeCopyWith<$Res> {
  _$DataTypeCopyWithImpl(this._value, this._then);

  final DataType _value;
  // ignore: unused_field
  final $Res Function(DataType) _then;
}

/// @nodoc
abstract class _$$_TemperatureCopyWith<$Res> {
  factory _$$_TemperatureCopyWith(
          _$_Temperature value, $Res Function(_$_Temperature) then) =
      __$$_TemperatureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TemperatureCopyWithImpl<$Res> extends _$DataTypeCopyWithImpl<$Res>
    implements _$$_TemperatureCopyWith<$Res> {
  __$$_TemperatureCopyWithImpl(
      _$_Temperature _value, $Res Function(_$_Temperature) _then)
      : super(_value, (v) => _then(v as _$_Temperature));

  @override
  _$_Temperature get _value => super._value as _$_Temperature;
}

/// @nodoc

class _$_Temperature implements _Temperature {
  const _$_Temperature();

  @override
  String toString() {
    return 'DataType.temperature()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Temperature);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() temperature,
    required TResult Function() symbol,
    required TResult Function() none,
  }) {
    return temperature();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? temperature,
    TResult Function()? symbol,
    TResult Function()? none,
  }) {
    return temperature?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? temperature,
    TResult Function()? symbol,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (temperature != null) {
      return temperature();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Temperature value) temperature,
    required TResult Function(_Symbol value) symbol,
    required TResult Function(_None value) none,
  }) {
    return temperature(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Temperature value)? temperature,
    TResult Function(_Symbol value)? symbol,
    TResult Function(_None value)? none,
  }) {
    return temperature?.call(this);
  }
}

abstract class _Temperature implements DataType {
  const factory _Temperature() = _$_Temperature;
}

/// @nodoc
abstract class _$$_SymbolCopyWith<$Res> {
  factory _$$_SymbolCopyWith(_$_Symbol value, $Res Function(_$_Symbol) then) =
      __$$_SymbolCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SymbolCopyWithImpl<$Res> extends _$DataTypeCopyWithImpl<$Res>
    implements _$$_SymbolCopyWith<$Res> {
  __$$_SymbolCopyWithImpl(_$_Symbol _value, $Res Function(_$_Symbol) _then)
      : super(_value, (v) => _then(v as _$_Symbol));

  @override
  _$_Symbol get _value => super._value as _$_Symbol;
}

/// @nodoc

class _$_Symbol implements _Symbol {
  const _$_Symbol();

  @override
  String toString() {
    return 'DataType.symbol()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Symbol);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() temperature,
    required TResult Function() symbol,
    required TResult Function() none,
  }) {
    return symbol();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? temperature,
    TResult Function()? symbol,
    TResult Function()? none,
  }) {
    return symbol?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? temperature,
    TResult Function()? symbol,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (symbol != null) {
      return symbol();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Temperature value) temperature,
    required TResult Function(_Symbol value) symbol,
    required TResult Function(_None value) none,
  }) {
    return symbol(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Temperature value)? temperature,
    TResult Function(_Symbol value)? symbol,
    TResult Function(_None value)? none,
  }) {
    return symbol?.call(this);
  }
}

abstract class _Symbol implements DataType {
  const factory _Symbol() = _$_Symbol;
}

/// @nodoc
abstract class _$$_NoneCopyWith<$Res> {
  factory _$$_NoneCopyWith(_$_None value, $Res Function(_$_None) then) =
      __$$_NoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NoneCopyWithImpl<$Res> extends _$DataTypeCopyWithImpl<$Res>
    implements _$$_NoneCopyWith<$Res> {
  __$$_NoneCopyWithImpl(_$_None _value, $Res Function(_$_None) _then)
      : super(_value, (v) => _then(v as _$_None));

  @override
  _$_None get _value => super._value as _$_None;
}

/// @nodoc

class _$_None implements _None {
  const _$_None();

  @override
  String toString() {
    return 'DataType.none()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_None);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() temperature,
    required TResult Function() symbol,
    required TResult Function() none,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? temperature,
    TResult Function()? symbol,
    TResult Function()? none,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? temperature,
    TResult Function()? symbol,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Temperature value) temperature,
    required TResult Function(_Symbol value) symbol,
    required TResult Function(_None value) none,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Temperature value)? temperature,
    TResult Function(_Symbol value)? symbol,
    TResult Function(_None value)? none,
  }) {
    return none?.call(this);
  }
}

abstract class _None implements DataType {
  const factory _None() = _$_None;
}
