// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'date_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DateState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() dateLoading,
    required TResult Function(PointsHistoryResponse data) dateSuccess,
    required TResult Function(ErrorHandler? errorHandler) dateError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? dateLoading,
    TResult? Function(PointsHistoryResponse data)? dateSuccess,
    TResult? Function(ErrorHandler? errorHandler)? dateError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? dateLoading,
    TResult Function(PointsHistoryResponse data)? dateSuccess,
    TResult Function(ErrorHandler? errorHandler)? dateError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DateLoading value) dateLoading,
    required TResult Function(_DateSuccess value) dateSuccess,
    required TResult Function(_DateError value) dateError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_DateLoading value)? dateLoading,
    TResult? Function(_DateSuccess value)? dateSuccess,
    TResult? Function(_DateError value)? dateError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DateLoading value)? dateLoading,
    TResult Function(_DateSuccess value)? dateSuccess,
    TResult Function(_DateError value)? dateError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateStateCopyWith<$Res> {
  factory $DateStateCopyWith(DateState value, $Res Function(DateState) then) =
      _$DateStateCopyWithImpl<$Res, DateState>;
}

/// @nodoc
class _$DateStateCopyWithImpl<$Res, $Val extends DateState>
    implements $DateStateCopyWith<$Res> {
  _$DateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DateState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$DateStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of DateState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'DateState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() dateLoading,
    required TResult Function(PointsHistoryResponse data) dateSuccess,
    required TResult Function(ErrorHandler? errorHandler) dateError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? dateLoading,
    TResult? Function(PointsHistoryResponse data)? dateSuccess,
    TResult? Function(ErrorHandler? errorHandler)? dateError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? dateLoading,
    TResult Function(PointsHistoryResponse data)? dateSuccess,
    TResult Function(ErrorHandler? errorHandler)? dateError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DateLoading value) dateLoading,
    required TResult Function(_DateSuccess value) dateSuccess,
    required TResult Function(_DateError value) dateError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_DateLoading value)? dateLoading,
    TResult? Function(_DateSuccess value)? dateSuccess,
    TResult? Function(_DateError value)? dateError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DateLoading value)? dateLoading,
    TResult Function(_DateSuccess value)? dateSuccess,
    TResult Function(_DateError value)? dateError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DateState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$DateLoadingImplCopyWith<$Res> {
  factory _$$DateLoadingImplCopyWith(
          _$DateLoadingImpl value, $Res Function(_$DateLoadingImpl) then) =
      __$$DateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DateLoadingImplCopyWithImpl<$Res>
    extends _$DateStateCopyWithImpl<$Res, _$DateLoadingImpl>
    implements _$$DateLoadingImplCopyWith<$Res> {
  __$$DateLoadingImplCopyWithImpl(
      _$DateLoadingImpl _value, $Res Function(_$DateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of DateState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DateLoadingImpl implements _DateLoading {
  const _$DateLoadingImpl();

  @override
  String toString() {
    return 'DateState.dateLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() dateLoading,
    required TResult Function(PointsHistoryResponse data) dateSuccess,
    required TResult Function(ErrorHandler? errorHandler) dateError,
  }) {
    return dateLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? dateLoading,
    TResult? Function(PointsHistoryResponse data)? dateSuccess,
    TResult? Function(ErrorHandler? errorHandler)? dateError,
  }) {
    return dateLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? dateLoading,
    TResult Function(PointsHistoryResponse data)? dateSuccess,
    TResult Function(ErrorHandler? errorHandler)? dateError,
    required TResult orElse(),
  }) {
    if (dateLoading != null) {
      return dateLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DateLoading value) dateLoading,
    required TResult Function(_DateSuccess value) dateSuccess,
    required TResult Function(_DateError value) dateError,
  }) {
    return dateLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_DateLoading value)? dateLoading,
    TResult? Function(_DateSuccess value)? dateSuccess,
    TResult? Function(_DateError value)? dateError,
  }) {
    return dateLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DateLoading value)? dateLoading,
    TResult Function(_DateSuccess value)? dateSuccess,
    TResult Function(_DateError value)? dateError,
    required TResult orElse(),
  }) {
    if (dateLoading != null) {
      return dateLoading(this);
    }
    return orElse();
  }
}

abstract class _DateLoading implements DateState {
  const factory _DateLoading() = _$DateLoadingImpl;
}

/// @nodoc
abstract class _$$DateSuccessImplCopyWith<$Res> {
  factory _$$DateSuccessImplCopyWith(
          _$DateSuccessImpl value, $Res Function(_$DateSuccessImpl) then) =
      __$$DateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PointsHistoryResponse data});
}

/// @nodoc
class __$$DateSuccessImplCopyWithImpl<$Res>
    extends _$DateStateCopyWithImpl<$Res, _$DateSuccessImpl>
    implements _$$DateSuccessImplCopyWith<$Res> {
  __$$DateSuccessImplCopyWithImpl(
      _$DateSuccessImpl _value, $Res Function(_$DateSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of DateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$DateSuccessImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PointsHistoryResponse,
    ));
  }
}

/// @nodoc

class _$DateSuccessImpl implements _DateSuccess {
  const _$DateSuccessImpl(this.data);

  @override
  final PointsHistoryResponse data;

  @override
  String toString() {
    return 'DateState.dateSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateSuccessImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of DateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DateSuccessImplCopyWith<_$DateSuccessImpl> get copyWith =>
      __$$DateSuccessImplCopyWithImpl<_$DateSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() dateLoading,
    required TResult Function(PointsHistoryResponse data) dateSuccess,
    required TResult Function(ErrorHandler? errorHandler) dateError,
  }) {
    return dateSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? dateLoading,
    TResult? Function(PointsHistoryResponse data)? dateSuccess,
    TResult? Function(ErrorHandler? errorHandler)? dateError,
  }) {
    return dateSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? dateLoading,
    TResult Function(PointsHistoryResponse data)? dateSuccess,
    TResult Function(ErrorHandler? errorHandler)? dateError,
    required TResult orElse(),
  }) {
    if (dateSuccess != null) {
      return dateSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DateLoading value) dateLoading,
    required TResult Function(_DateSuccess value) dateSuccess,
    required TResult Function(_DateError value) dateError,
  }) {
    return dateSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_DateLoading value)? dateLoading,
    TResult? Function(_DateSuccess value)? dateSuccess,
    TResult? Function(_DateError value)? dateError,
  }) {
    return dateSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DateLoading value)? dateLoading,
    TResult Function(_DateSuccess value)? dateSuccess,
    TResult Function(_DateError value)? dateError,
    required TResult orElse(),
  }) {
    if (dateSuccess != null) {
      return dateSuccess(this);
    }
    return orElse();
  }
}

abstract class _DateSuccess implements DateState {
  const factory _DateSuccess(final PointsHistoryResponse data) =
      _$DateSuccessImpl;

  PointsHistoryResponse get data;

  /// Create a copy of DateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DateSuccessImplCopyWith<_$DateSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DateErrorImplCopyWith<$Res> {
  factory _$$DateErrorImplCopyWith(
          _$DateErrorImpl value, $Res Function(_$DateErrorImpl) then) =
      __$$DateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorHandler? errorHandler});
}

/// @nodoc
class __$$DateErrorImplCopyWithImpl<$Res>
    extends _$DateStateCopyWithImpl<$Res, _$DateErrorImpl>
    implements _$$DateErrorImplCopyWith<$Res> {
  __$$DateErrorImplCopyWithImpl(
      _$DateErrorImpl _value, $Res Function(_$DateErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of DateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorHandler = freezed,
  }) {
    return _then(_$DateErrorImpl(
      freezed == errorHandler
          ? _value.errorHandler
          : errorHandler // ignore: cast_nullable_to_non_nullable
              as ErrorHandler?,
    ));
  }
}

/// @nodoc

class _$DateErrorImpl implements _DateError {
  const _$DateErrorImpl(this.errorHandler);

  @override
  final ErrorHandler? errorHandler;

  @override
  String toString() {
    return 'DateState.dateError(errorHandler: $errorHandler)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateErrorImpl &&
            (identical(other.errorHandler, errorHandler) ||
                other.errorHandler == errorHandler));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorHandler);

  /// Create a copy of DateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DateErrorImplCopyWith<_$DateErrorImpl> get copyWith =>
      __$$DateErrorImplCopyWithImpl<_$DateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() dateLoading,
    required TResult Function(PointsHistoryResponse data) dateSuccess,
    required TResult Function(ErrorHandler? errorHandler) dateError,
  }) {
    return dateError(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? dateLoading,
    TResult? Function(PointsHistoryResponse data)? dateSuccess,
    TResult? Function(ErrorHandler? errorHandler)? dateError,
  }) {
    return dateError?.call(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? dateLoading,
    TResult Function(PointsHistoryResponse data)? dateSuccess,
    TResult Function(ErrorHandler? errorHandler)? dateError,
    required TResult orElse(),
  }) {
    if (dateError != null) {
      return dateError(errorHandler);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DateLoading value) dateLoading,
    required TResult Function(_DateSuccess value) dateSuccess,
    required TResult Function(_DateError value) dateError,
  }) {
    return dateError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_DateLoading value)? dateLoading,
    TResult? Function(_DateSuccess value)? dateSuccess,
    TResult? Function(_DateError value)? dateError,
  }) {
    return dateError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DateLoading value)? dateLoading,
    TResult Function(_DateSuccess value)? dateSuccess,
    TResult Function(_DateError value)? dateError,
    required TResult orElse(),
  }) {
    if (dateError != null) {
      return dateError(this);
    }
    return orElse();
  }
}

abstract class _DateError implements DateState {
  const factory _DateError(final ErrorHandler? errorHandler) = _$DateErrorImpl;

  ErrorHandler? get errorHandler;

  /// Create a copy of DateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DateErrorImplCopyWith<_$DateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
