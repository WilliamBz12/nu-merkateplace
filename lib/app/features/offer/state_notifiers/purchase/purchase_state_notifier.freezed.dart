// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'purchase_state_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PurchaseStateTearOff {
  const _$PurchaseStateTearOff();

  PurchaseInitial initial() {
    return const PurchaseInitial();
  }

  PurchaseLoading loading() {
    return const PurchaseLoading();
  }

  PurchaseSuccess success(OfferModel offer) {
    return PurchaseSuccess(
      offer,
    );
  }

  PurchaseFailure failure(String error) {
    return PurchaseFailure(
      error,
    );
  }
}

/// @nodoc
const $PurchaseState = _$PurchaseStateTearOff();

/// @nodoc
mixin _$PurchaseState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(OfferModel offer) success,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OfferModel offer)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PurchaseInitial value) initial,
    required TResult Function(PurchaseLoading value) loading,
    required TResult Function(PurchaseSuccess value) success,
    required TResult Function(PurchaseFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PurchaseInitial value)? initial,
    TResult Function(PurchaseLoading value)? loading,
    TResult Function(PurchaseSuccess value)? success,
    TResult Function(PurchaseFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseStateCopyWith<$Res> {
  factory $PurchaseStateCopyWith(
          PurchaseState value, $Res Function(PurchaseState) then) =
      _$PurchaseStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PurchaseStateCopyWithImpl<$Res>
    implements $PurchaseStateCopyWith<$Res> {
  _$PurchaseStateCopyWithImpl(this._value, this._then);

  final PurchaseState _value;
  // ignore: unused_field
  final $Res Function(PurchaseState) _then;
}

/// @nodoc
abstract class $PurchaseInitialCopyWith<$Res> {
  factory $PurchaseInitialCopyWith(
          PurchaseInitial value, $Res Function(PurchaseInitial) then) =
      _$PurchaseInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$PurchaseInitialCopyWithImpl<$Res>
    extends _$PurchaseStateCopyWithImpl<$Res>
    implements $PurchaseInitialCopyWith<$Res> {
  _$PurchaseInitialCopyWithImpl(
      PurchaseInitial _value, $Res Function(PurchaseInitial) _then)
      : super(_value, (v) => _then(v as PurchaseInitial));

  @override
  PurchaseInitial get _value => super._value as PurchaseInitial;
}

/// @nodoc

class _$PurchaseInitial implements PurchaseInitial {
  const _$PurchaseInitial();

  @override
  String toString() {
    return 'PurchaseState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PurchaseInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(OfferModel offer) success,
    required TResult Function(String error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OfferModel offer)? success,
    TResult Function(String error)? failure,
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
    required TResult Function(PurchaseInitial value) initial,
    required TResult Function(PurchaseLoading value) loading,
    required TResult Function(PurchaseSuccess value) success,
    required TResult Function(PurchaseFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PurchaseInitial value)? initial,
    TResult Function(PurchaseLoading value)? loading,
    TResult Function(PurchaseSuccess value)? success,
    TResult Function(PurchaseFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PurchaseInitial implements PurchaseState {
  const factory PurchaseInitial() = _$PurchaseInitial;
}

/// @nodoc
abstract class $PurchaseLoadingCopyWith<$Res> {
  factory $PurchaseLoadingCopyWith(
          PurchaseLoading value, $Res Function(PurchaseLoading) then) =
      _$PurchaseLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$PurchaseLoadingCopyWithImpl<$Res>
    extends _$PurchaseStateCopyWithImpl<$Res>
    implements $PurchaseLoadingCopyWith<$Res> {
  _$PurchaseLoadingCopyWithImpl(
      PurchaseLoading _value, $Res Function(PurchaseLoading) _then)
      : super(_value, (v) => _then(v as PurchaseLoading));

  @override
  PurchaseLoading get _value => super._value as PurchaseLoading;
}

/// @nodoc

class _$PurchaseLoading implements PurchaseLoading {
  const _$PurchaseLoading();

  @override
  String toString() {
    return 'PurchaseState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PurchaseLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(OfferModel offer) success,
    required TResult Function(String error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OfferModel offer)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PurchaseInitial value) initial,
    required TResult Function(PurchaseLoading value) loading,
    required TResult Function(PurchaseSuccess value) success,
    required TResult Function(PurchaseFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PurchaseInitial value)? initial,
    TResult Function(PurchaseLoading value)? loading,
    TResult Function(PurchaseSuccess value)? success,
    TResult Function(PurchaseFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PurchaseLoading implements PurchaseState {
  const factory PurchaseLoading() = _$PurchaseLoading;
}

/// @nodoc
abstract class $PurchaseSuccessCopyWith<$Res> {
  factory $PurchaseSuccessCopyWith(
          PurchaseSuccess value, $Res Function(PurchaseSuccess) then) =
      _$PurchaseSuccessCopyWithImpl<$Res>;
  $Res call({OfferModel offer});
}

/// @nodoc
class _$PurchaseSuccessCopyWithImpl<$Res>
    extends _$PurchaseStateCopyWithImpl<$Res>
    implements $PurchaseSuccessCopyWith<$Res> {
  _$PurchaseSuccessCopyWithImpl(
      PurchaseSuccess _value, $Res Function(PurchaseSuccess) _then)
      : super(_value, (v) => _then(v as PurchaseSuccess));

  @override
  PurchaseSuccess get _value => super._value as PurchaseSuccess;

  @override
  $Res call({
    Object? offer = freezed,
  }) {
    return _then(PurchaseSuccess(
      offer == freezed
          ? _value.offer
          : offer // ignore: cast_nullable_to_non_nullable
              as OfferModel,
    ));
  }
}

/// @nodoc

class _$PurchaseSuccess implements PurchaseSuccess {
  const _$PurchaseSuccess(this.offer);

  @override
  final OfferModel offer;

  @override
  String toString() {
    return 'PurchaseState.success(offer: $offer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PurchaseSuccess &&
            (identical(other.offer, offer) ||
                const DeepCollectionEquality().equals(other.offer, offer)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(offer);

  @JsonKey(ignore: true)
  @override
  $PurchaseSuccessCopyWith<PurchaseSuccess> get copyWith =>
      _$PurchaseSuccessCopyWithImpl<PurchaseSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(OfferModel offer) success,
    required TResult Function(String error) failure,
  }) {
    return success(offer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OfferModel offer)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(offer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PurchaseInitial value) initial,
    required TResult Function(PurchaseLoading value) loading,
    required TResult Function(PurchaseSuccess value) success,
    required TResult Function(PurchaseFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PurchaseInitial value)? initial,
    TResult Function(PurchaseLoading value)? loading,
    TResult Function(PurchaseSuccess value)? success,
    TResult Function(PurchaseFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class PurchaseSuccess implements PurchaseState {
  const factory PurchaseSuccess(OfferModel offer) = _$PurchaseSuccess;

  OfferModel get offer => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchaseSuccessCopyWith<PurchaseSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseFailureCopyWith<$Res> {
  factory $PurchaseFailureCopyWith(
          PurchaseFailure value, $Res Function(PurchaseFailure) then) =
      _$PurchaseFailureCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$PurchaseFailureCopyWithImpl<$Res>
    extends _$PurchaseStateCopyWithImpl<$Res>
    implements $PurchaseFailureCopyWith<$Res> {
  _$PurchaseFailureCopyWithImpl(
      PurchaseFailure _value, $Res Function(PurchaseFailure) _then)
      : super(_value, (v) => _then(v as PurchaseFailure));

  @override
  PurchaseFailure get _value => super._value as PurchaseFailure;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(PurchaseFailure(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PurchaseFailure implements PurchaseFailure {
  const _$PurchaseFailure(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'PurchaseState.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PurchaseFailure &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $PurchaseFailureCopyWith<PurchaseFailure> get copyWith =>
      _$PurchaseFailureCopyWithImpl<PurchaseFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(OfferModel offer) success,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OfferModel offer)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PurchaseInitial value) initial,
    required TResult Function(PurchaseLoading value) loading,
    required TResult Function(PurchaseSuccess value) success,
    required TResult Function(PurchaseFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PurchaseInitial value)? initial,
    TResult Function(PurchaseLoading value)? loading,
    TResult Function(PurchaseSuccess value)? success,
    TResult Function(PurchaseFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class PurchaseFailure implements PurchaseState {
  const factory PurchaseFailure(String error) = _$PurchaseFailure;

  String get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchaseFailureCopyWith<PurchaseFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
