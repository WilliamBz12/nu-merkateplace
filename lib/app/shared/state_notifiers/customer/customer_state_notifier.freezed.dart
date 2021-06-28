// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'customer_state_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CustomerStateTearOff {
  const _$CustomerStateTearOff();

  CustomerInitial initial() {
    return const CustomerInitial();
  }

  CustomerLoading loading() {
    return const CustomerLoading();
  }

  CustomerSuccess success(CustomerModel customer) {
    return CustomerSuccess(
      customer,
    );
  }

  CustomerFailure failure(String error) {
    return CustomerFailure(
      error,
    );
  }
}

/// @nodoc
const $CustomerState = _$CustomerStateTearOff();

/// @nodoc
mixin _$CustomerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CustomerModel customer) success,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CustomerModel customer)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomerInitial value) initial,
    required TResult Function(CustomerLoading value) loading,
    required TResult Function(CustomerSuccess value) success,
    required TResult Function(CustomerFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomerInitial value)? initial,
    TResult Function(CustomerLoading value)? loading,
    TResult Function(CustomerSuccess value)? success,
    TResult Function(CustomerFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerStateCopyWith<$Res> {
  factory $CustomerStateCopyWith(
          CustomerState value, $Res Function(CustomerState) then) =
      _$CustomerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CustomerStateCopyWithImpl<$Res>
    implements $CustomerStateCopyWith<$Res> {
  _$CustomerStateCopyWithImpl(this._value, this._then);

  final CustomerState _value;
  // ignore: unused_field
  final $Res Function(CustomerState) _then;
}

/// @nodoc
abstract class $CustomerInitialCopyWith<$Res> {
  factory $CustomerInitialCopyWith(
          CustomerInitial value, $Res Function(CustomerInitial) then) =
      _$CustomerInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$CustomerInitialCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res>
    implements $CustomerInitialCopyWith<$Res> {
  _$CustomerInitialCopyWithImpl(
      CustomerInitial _value, $Res Function(CustomerInitial) _then)
      : super(_value, (v) => _then(v as CustomerInitial));

  @override
  CustomerInitial get _value => super._value as CustomerInitial;
}

/// @nodoc

class _$CustomerInitial implements CustomerInitial {
  const _$CustomerInitial();

  @override
  String toString() {
    return 'CustomerState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CustomerInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CustomerModel customer) success,
    required TResult Function(String error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CustomerModel customer)? success,
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
    required TResult Function(CustomerInitial value) initial,
    required TResult Function(CustomerLoading value) loading,
    required TResult Function(CustomerSuccess value) success,
    required TResult Function(CustomerFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomerInitial value)? initial,
    TResult Function(CustomerLoading value)? loading,
    TResult Function(CustomerSuccess value)? success,
    TResult Function(CustomerFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CustomerInitial implements CustomerState {
  const factory CustomerInitial() = _$CustomerInitial;
}

/// @nodoc
abstract class $CustomerLoadingCopyWith<$Res> {
  factory $CustomerLoadingCopyWith(
          CustomerLoading value, $Res Function(CustomerLoading) then) =
      _$CustomerLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CustomerLoadingCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res>
    implements $CustomerLoadingCopyWith<$Res> {
  _$CustomerLoadingCopyWithImpl(
      CustomerLoading _value, $Res Function(CustomerLoading) _then)
      : super(_value, (v) => _then(v as CustomerLoading));

  @override
  CustomerLoading get _value => super._value as CustomerLoading;
}

/// @nodoc

class _$CustomerLoading implements CustomerLoading {
  const _$CustomerLoading();

  @override
  String toString() {
    return 'CustomerState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CustomerLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CustomerModel customer) success,
    required TResult Function(String error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CustomerModel customer)? success,
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
    required TResult Function(CustomerInitial value) initial,
    required TResult Function(CustomerLoading value) loading,
    required TResult Function(CustomerSuccess value) success,
    required TResult Function(CustomerFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomerInitial value)? initial,
    TResult Function(CustomerLoading value)? loading,
    TResult Function(CustomerSuccess value)? success,
    TResult Function(CustomerFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CustomerLoading implements CustomerState {
  const factory CustomerLoading() = _$CustomerLoading;
}

/// @nodoc
abstract class $CustomerSuccessCopyWith<$Res> {
  factory $CustomerSuccessCopyWith(
          CustomerSuccess value, $Res Function(CustomerSuccess) then) =
      _$CustomerSuccessCopyWithImpl<$Res>;
  $Res call({CustomerModel customer});
}

/// @nodoc
class _$CustomerSuccessCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res>
    implements $CustomerSuccessCopyWith<$Res> {
  _$CustomerSuccessCopyWithImpl(
      CustomerSuccess _value, $Res Function(CustomerSuccess) _then)
      : super(_value, (v) => _then(v as CustomerSuccess));

  @override
  CustomerSuccess get _value => super._value as CustomerSuccess;

  @override
  $Res call({
    Object? customer = freezed,
  }) {
    return _then(CustomerSuccess(
      customer == freezed
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as CustomerModel,
    ));
  }
}

/// @nodoc

class _$CustomerSuccess implements CustomerSuccess {
  const _$CustomerSuccess(this.customer);

  @override
  final CustomerModel customer;

  @override
  String toString() {
    return 'CustomerState.success(customer: $customer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CustomerSuccess &&
            (identical(other.customer, customer) ||
                const DeepCollectionEquality()
                    .equals(other.customer, customer)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(customer);

  @JsonKey(ignore: true)
  @override
  $CustomerSuccessCopyWith<CustomerSuccess> get copyWith =>
      _$CustomerSuccessCopyWithImpl<CustomerSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CustomerModel customer) success,
    required TResult Function(String error) failure,
  }) {
    return success(customer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CustomerModel customer)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(customer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomerInitial value) initial,
    required TResult Function(CustomerLoading value) loading,
    required TResult Function(CustomerSuccess value) success,
    required TResult Function(CustomerFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomerInitial value)? initial,
    TResult Function(CustomerLoading value)? loading,
    TResult Function(CustomerSuccess value)? success,
    TResult Function(CustomerFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class CustomerSuccess implements CustomerState {
  const factory CustomerSuccess(CustomerModel customer) = _$CustomerSuccess;

  CustomerModel get customer => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerSuccessCopyWith<CustomerSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerFailureCopyWith<$Res> {
  factory $CustomerFailureCopyWith(
          CustomerFailure value, $Res Function(CustomerFailure) then) =
      _$CustomerFailureCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$CustomerFailureCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res>
    implements $CustomerFailureCopyWith<$Res> {
  _$CustomerFailureCopyWithImpl(
      CustomerFailure _value, $Res Function(CustomerFailure) _then)
      : super(_value, (v) => _then(v as CustomerFailure));

  @override
  CustomerFailure get _value => super._value as CustomerFailure;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(CustomerFailure(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CustomerFailure implements CustomerFailure {
  const _$CustomerFailure(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'CustomerState.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CustomerFailure &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $CustomerFailureCopyWith<CustomerFailure> get copyWith =>
      _$CustomerFailureCopyWithImpl<CustomerFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CustomerModel customer) success,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CustomerModel customer)? success,
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
    required TResult Function(CustomerInitial value) initial,
    required TResult Function(CustomerLoading value) loading,
    required TResult Function(CustomerSuccess value) success,
    required TResult Function(CustomerFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomerInitial value)? initial,
    TResult Function(CustomerLoading value)? loading,
    TResult Function(CustomerSuccess value)? success,
    TResult Function(CustomerFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class CustomerFailure implements CustomerState {
  const factory CustomerFailure(String error) = _$CustomerFailure;

  String get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerFailureCopyWith<CustomerFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
