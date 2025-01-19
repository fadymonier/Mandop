// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HistoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() historyLoading,
    required TResult Function(PointsHistoryResponse data) historySuccess,
    required TResult Function(ErrorHandler? errorHandler) historyError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? historyLoading,
    TResult? Function(PointsHistoryResponse data)? historySuccess,
    TResult? Function(ErrorHandler? errorHandler)? historyError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? historyLoading,
    TResult Function(PointsHistoryResponse data)? historySuccess,
    TResult Function(ErrorHandler? errorHandler)? historyError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_HistoryLoading value) historyLoading,
    required TResult Function(_HistorySuccess value) historySuccess,
    required TResult Function(_HistoryError value) historyError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_HistoryLoading value)? historyLoading,
    TResult? Function(_HistorySuccess value)? historySuccess,
    TResult? Function(_HistoryError value)? historyError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_HistoryLoading value)? historyLoading,
    TResult Function(_HistorySuccess value)? historySuccess,
    TResult Function(_HistoryError value)? historyError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryStateCopyWith<$Res> {
  factory $HistoryStateCopyWith(
          HistoryState value, $Res Function(HistoryState) then) =
      _$HistoryStateCopyWithImpl<$Res, HistoryState>;
}

/// @nodoc
class _$HistoryStateCopyWithImpl<$Res, $Val extends HistoryState>
    implements $HistoryStateCopyWith<$Res> {
  _$HistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HistoryState
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
    extends _$HistoryStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'HistoryState.initial()';
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
    required TResult Function() historyLoading,
    required TResult Function(PointsHistoryResponse data) historySuccess,
    required TResult Function(ErrorHandler? errorHandler) historyError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? historyLoading,
    TResult? Function(PointsHistoryResponse data)? historySuccess,
    TResult? Function(ErrorHandler? errorHandler)? historyError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? historyLoading,
    TResult Function(PointsHistoryResponse data)? historySuccess,
    TResult Function(ErrorHandler? errorHandler)? historyError,
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
    required TResult Function(_HistoryLoading value) historyLoading,
    required TResult Function(_HistorySuccess value) historySuccess,
    required TResult Function(_HistoryError value) historyError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_HistoryLoading value)? historyLoading,
    TResult? Function(_HistorySuccess value)? historySuccess,
    TResult? Function(_HistoryError value)? historyError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_HistoryLoading value)? historyLoading,
    TResult Function(_HistorySuccess value)? historySuccess,
    TResult Function(_HistoryError value)? historyError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HistoryState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$HistoryLoadingImplCopyWith<$Res> {
  factory _$$HistoryLoadingImplCopyWith(_$HistoryLoadingImpl value,
          $Res Function(_$HistoryLoadingImpl) then) =
      __$$HistoryLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HistoryLoadingImplCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$HistoryLoadingImpl>
    implements _$$HistoryLoadingImplCopyWith<$Res> {
  __$$HistoryLoadingImplCopyWithImpl(
      _$HistoryLoadingImpl _value, $Res Function(_$HistoryLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HistoryLoadingImpl implements _HistoryLoading {
  const _$HistoryLoadingImpl();

  @override
  String toString() {
    return 'HistoryState.historyLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HistoryLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() historyLoading,
    required TResult Function(PointsHistoryResponse data) historySuccess,
    required TResult Function(ErrorHandler? errorHandler) historyError,
  }) {
    return historyLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? historyLoading,
    TResult? Function(PointsHistoryResponse data)? historySuccess,
    TResult? Function(ErrorHandler? errorHandler)? historyError,
  }) {
    return historyLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? historyLoading,
    TResult Function(PointsHistoryResponse data)? historySuccess,
    TResult Function(ErrorHandler? errorHandler)? historyError,
    required TResult orElse(),
  }) {
    if (historyLoading != null) {
      return historyLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_HistoryLoading value) historyLoading,
    required TResult Function(_HistorySuccess value) historySuccess,
    required TResult Function(_HistoryError value) historyError,
  }) {
    return historyLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_HistoryLoading value)? historyLoading,
    TResult? Function(_HistorySuccess value)? historySuccess,
    TResult? Function(_HistoryError value)? historyError,
  }) {
    return historyLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_HistoryLoading value)? historyLoading,
    TResult Function(_HistorySuccess value)? historySuccess,
    TResult Function(_HistoryError value)? historyError,
    required TResult orElse(),
  }) {
    if (historyLoading != null) {
      return historyLoading(this);
    }
    return orElse();
  }
}

abstract class _HistoryLoading implements HistoryState {
  const factory _HistoryLoading() = _$HistoryLoadingImpl;
}

/// @nodoc
abstract class _$$HistorySuccessImplCopyWith<$Res> {
  factory _$$HistorySuccessImplCopyWith(_$HistorySuccessImpl value,
          $Res Function(_$HistorySuccessImpl) then) =
      __$$HistorySuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PointsHistoryResponse data});
}

/// @nodoc
class __$$HistorySuccessImplCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$HistorySuccessImpl>
    implements _$$HistorySuccessImplCopyWith<$Res> {
  __$$HistorySuccessImplCopyWithImpl(
      _$HistorySuccessImpl _value, $Res Function(_$HistorySuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$HistorySuccessImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PointsHistoryResponse,
    ));
  }
}

/// @nodoc

class _$HistorySuccessImpl implements _HistorySuccess {
  const _$HistorySuccessImpl(this.data);

  @override
  final PointsHistoryResponse data;

  @override
  String toString() {
    return 'HistoryState.historySuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistorySuccessImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HistorySuccessImplCopyWith<_$HistorySuccessImpl> get copyWith =>
      __$$HistorySuccessImplCopyWithImpl<_$HistorySuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() historyLoading,
    required TResult Function(PointsHistoryResponse data) historySuccess,
    required TResult Function(ErrorHandler? errorHandler) historyError,
  }) {
    return historySuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? historyLoading,
    TResult? Function(PointsHistoryResponse data)? historySuccess,
    TResult? Function(ErrorHandler? errorHandler)? historyError,
  }) {
    return historySuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? historyLoading,
    TResult Function(PointsHistoryResponse data)? historySuccess,
    TResult Function(ErrorHandler? errorHandler)? historyError,
    required TResult orElse(),
  }) {
    if (historySuccess != null) {
      return historySuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_HistoryLoading value) historyLoading,
    required TResult Function(_HistorySuccess value) historySuccess,
    required TResult Function(_HistoryError value) historyError,
  }) {
    return historySuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_HistoryLoading value)? historyLoading,
    TResult? Function(_HistorySuccess value)? historySuccess,
    TResult? Function(_HistoryError value)? historyError,
  }) {
    return historySuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_HistoryLoading value)? historyLoading,
    TResult Function(_HistorySuccess value)? historySuccess,
    TResult Function(_HistoryError value)? historyError,
    required TResult orElse(),
  }) {
    if (historySuccess != null) {
      return historySuccess(this);
    }
    return orElse();
  }
}

abstract class _HistorySuccess implements HistoryState {
  const factory _HistorySuccess(final PointsHistoryResponse data) =
      _$HistorySuccessImpl;

  PointsHistoryResponse get data;

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HistorySuccessImplCopyWith<_$HistorySuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HistoryErrorImplCopyWith<$Res> {
  factory _$$HistoryErrorImplCopyWith(
          _$HistoryErrorImpl value, $Res Function(_$HistoryErrorImpl) then) =
      __$$HistoryErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorHandler? errorHandler});
}

/// @nodoc
class __$$HistoryErrorImplCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$HistoryErrorImpl>
    implements _$$HistoryErrorImplCopyWith<$Res> {
  __$$HistoryErrorImplCopyWithImpl(
      _$HistoryErrorImpl _value, $Res Function(_$HistoryErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorHandler = freezed,
  }) {
    return _then(_$HistoryErrorImpl(
      freezed == errorHandler
          ? _value.errorHandler
          : errorHandler // ignore: cast_nullable_to_non_nullable
              as ErrorHandler?,
    ));
  }
}

/// @nodoc

class _$HistoryErrorImpl implements _HistoryError {
  const _$HistoryErrorImpl(this.errorHandler);

  @override
  final ErrorHandler? errorHandler;

  @override
  String toString() {
    return 'HistoryState.historyError(errorHandler: $errorHandler)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryErrorImpl &&
            (identical(other.errorHandler, errorHandler) ||
                other.errorHandler == errorHandler));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorHandler);

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryErrorImplCopyWith<_$HistoryErrorImpl> get copyWith =>
      __$$HistoryErrorImplCopyWithImpl<_$HistoryErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() historyLoading,
    required TResult Function(PointsHistoryResponse data) historySuccess,
    required TResult Function(ErrorHandler? errorHandler) historyError,
  }) {
    return historyError(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? historyLoading,
    TResult? Function(PointsHistoryResponse data)? historySuccess,
    TResult? Function(ErrorHandler? errorHandler)? historyError,
  }) {
    return historyError?.call(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? historyLoading,
    TResult Function(PointsHistoryResponse data)? historySuccess,
    TResult Function(ErrorHandler? errorHandler)? historyError,
    required TResult orElse(),
  }) {
    if (historyError != null) {
      return historyError(errorHandler);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_HistoryLoading value) historyLoading,
    required TResult Function(_HistorySuccess value) historySuccess,
    required TResult Function(_HistoryError value) historyError,
  }) {
    return historyError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_HistoryLoading value)? historyLoading,
    TResult? Function(_HistorySuccess value)? historySuccess,
    TResult? Function(_HistoryError value)? historyError,
  }) {
    return historyError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_HistoryLoading value)? historyLoading,
    TResult Function(_HistorySuccess value)? historySuccess,
    TResult Function(_HistoryError value)? historyError,
    required TResult orElse(),
  }) {
    if (historyError != null) {
      return historyError(this);
    }
    return orElse();
  }
}

abstract class _HistoryError implements HistoryState {
  const factory _HistoryError(final ErrorHandler? errorHandler) =
      _$HistoryErrorImpl;

  ErrorHandler? get errorHandler;

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HistoryErrorImplCopyWith<_$HistoryErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
