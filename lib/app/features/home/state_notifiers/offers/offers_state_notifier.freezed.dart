// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'offers_state_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OffersStateTearOff {
  const _$OffersStateTearOff();

  OffersInitial initial() {
    return const OffersInitial();
  }

  OffersLoading loading() {
    return const OffersLoading();
  }

  OffersSuccess success(List<OfferModel> offers) {
    return OffersSuccess(
      offers,
    );
  }

  OffersFailure failure(String error) {
    return OffersFailure(
      error,
    );
  }
}

/// @nodoc
const $OffersState = _$OffersStateTearOff();

/// @nodoc
mixin _$OffersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<OfferModel> offers) success,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<OfferModel> offers)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OffersInitial value) initial,
    required TResult Function(OffersLoading value) loading,
    required TResult Function(OffersSuccess value) success,
    required TResult Function(OffersFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OffersInitial value)? initial,
    TResult Function(OffersLoading value)? loading,
    TResult Function(OffersSuccess value)? success,
    TResult Function(OffersFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OffersStateCopyWith<$Res> {
  factory $OffersStateCopyWith(
          OffersState value, $Res Function(OffersState) then) =
      _$OffersStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$OffersStateCopyWithImpl<$Res> implements $OffersStateCopyWith<$Res> {
  _$OffersStateCopyWithImpl(this._value, this._then);

  final OffersState _value;
  // ignore: unused_field
  final $Res Function(OffersState) _then;
}

/// @nodoc
abstract class $OffersInitialCopyWith<$Res> {
  factory $OffersInitialCopyWith(
          OffersInitial value, $Res Function(OffersInitial) then) =
      _$OffersInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$OffersInitialCopyWithImpl<$Res> extends _$OffersStateCopyWithImpl<$Res>
    implements $OffersInitialCopyWith<$Res> {
  _$OffersInitialCopyWithImpl(
      OffersInitial _value, $Res Function(OffersInitial) _then)
      : super(_value, (v) => _then(v as OffersInitial));

  @override
  OffersInitial get _value => super._value as OffersInitial;
}

/// @nodoc

class _$OffersInitial implements OffersInitial {
  const _$OffersInitial();

  @override
  String toString() {
    return 'OffersState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OffersInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<OfferModel> offers) success,
    required TResult Function(String error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<OfferModel> offers)? success,
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
    required TResult Function(OffersInitial value) initial,
    required TResult Function(OffersLoading value) loading,
    required TResult Function(OffersSuccess value) success,
    required TResult Function(OffersFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OffersInitial value)? initial,
    TResult Function(OffersLoading value)? loading,
    TResult Function(OffersSuccess value)? success,
    TResult Function(OffersFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class OffersInitial implements OffersState {
  const factory OffersInitial() = _$OffersInitial;
}

/// @nodoc
abstract class $OffersLoadingCopyWith<$Res> {
  factory $OffersLoadingCopyWith(
          OffersLoading value, $Res Function(OffersLoading) then) =
      _$OffersLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$OffersLoadingCopyWithImpl<$Res> extends _$OffersStateCopyWithImpl<$Res>
    implements $OffersLoadingCopyWith<$Res> {
  _$OffersLoadingCopyWithImpl(
      OffersLoading _value, $Res Function(OffersLoading) _then)
      : super(_value, (v) => _then(v as OffersLoading));

  @override
  OffersLoading get _value => super._value as OffersLoading;
}

/// @nodoc

class _$OffersLoading implements OffersLoading {
  const _$OffersLoading();

  @override
  String toString() {
    return 'OffersState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OffersLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<OfferModel> offers) success,
    required TResult Function(String error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<OfferModel> offers)? success,
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
    required TResult Function(OffersInitial value) initial,
    required TResult Function(OffersLoading value) loading,
    required TResult Function(OffersSuccess value) success,
    required TResult Function(OffersFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OffersInitial value)? initial,
    TResult Function(OffersLoading value)? loading,
    TResult Function(OffersSuccess value)? success,
    TResult Function(OffersFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class OffersLoading implements OffersState {
  const factory OffersLoading() = _$OffersLoading;
}

/// @nodoc
abstract class $OffersSuccessCopyWith<$Res> {
  factory $OffersSuccessCopyWith(
          OffersSuccess value, $Res Function(OffersSuccess) then) =
      _$OffersSuccessCopyWithImpl<$Res>;
  $Res call({List<OfferModel> offers});
}

/// @nodoc
class _$OffersSuccessCopyWithImpl<$Res> extends _$OffersStateCopyWithImpl<$Res>
    implements $OffersSuccessCopyWith<$Res> {
  _$OffersSuccessCopyWithImpl(
      OffersSuccess _value, $Res Function(OffersSuccess) _then)
      : super(_value, (v) => _then(v as OffersSuccess));

  @override
  OffersSuccess get _value => super._value as OffersSuccess;

  @override
  $Res call({
    Object? offers = freezed,
  }) {
    return _then(OffersSuccess(
      offers == freezed
          ? _value.offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<OfferModel>,
    ));
  }
}

/// @nodoc

class _$OffersSuccess implements OffersSuccess {
  const _$OffersSuccess(this.offers);

  @override
  final List<OfferModel> offers;

  @override
  String toString() {
    return 'OffersState.success(offers: $offers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OffersSuccess &&
            (identical(other.offers, offers) ||
                const DeepCollectionEquality().equals(other.offers, offers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(offers);

  @JsonKey(ignore: true)
  @override
  $OffersSuccessCopyWith<OffersSuccess> get copyWith =>
      _$OffersSuccessCopyWithImpl<OffersSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<OfferModel> offers) success,
    required TResult Function(String error) failure,
  }) {
    return success(offers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<OfferModel> offers)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(offers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OffersInitial value) initial,
    required TResult Function(OffersLoading value) loading,
    required TResult Function(OffersSuccess value) success,
    required TResult Function(OffersFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OffersInitial value)? initial,
    TResult Function(OffersLoading value)? loading,
    TResult Function(OffersSuccess value)? success,
    TResult Function(OffersFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class OffersSuccess implements OffersState {
  const factory OffersSuccess(List<OfferModel> offers) = _$OffersSuccess;

  List<OfferModel> get offers => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OffersSuccessCopyWith<OffersSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OffersFailureCopyWith<$Res> {
  factory $OffersFailureCopyWith(
          OffersFailure value, $Res Function(OffersFailure) then) =
      _$OffersFailureCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$OffersFailureCopyWithImpl<$Res> extends _$OffersStateCopyWithImpl<$Res>
    implements $OffersFailureCopyWith<$Res> {
  _$OffersFailureCopyWithImpl(
      OffersFailure _value, $Res Function(OffersFailure) _then)
      : super(_value, (v) => _then(v as OffersFailure));

  @override
  OffersFailure get _value => super._value as OffersFailure;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(OffersFailure(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OffersFailure implements OffersFailure {
  const _$OffersFailure(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'OffersState.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OffersFailure &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $OffersFailureCopyWith<OffersFailure> get copyWith =>
      _$OffersFailureCopyWithImpl<OffersFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<OfferModel> offers) success,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<OfferModel> offers)? success,
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
    required TResult Function(OffersInitial value) initial,
    required TResult Function(OffersLoading value) loading,
    required TResult Function(OffersSuccess value) success,
    required TResult Function(OffersFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OffersInitial value)? initial,
    TResult Function(OffersLoading value)? loading,
    TResult Function(OffersSuccess value)? success,
    TResult Function(OffersFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class OffersFailure implements OffersState {
  const factory OffersFailure(String error) = _$OffersFailure;

  String get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OffersFailureCopyWith<OffersFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
