// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

extension CustomerModelCopyWith on CustomerModel {
  CustomerModel copyWith({
    int? balance,
    String? name,
  }) {
    return CustomerModel(
      balance: balance ?? this.balance,
      name: name ?? this.name,
    );
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerModel _$CustomerModelFromJson(Map<String, dynamic> json) {
  return CustomerModel(
    name: json['name'] as String,
    balance: json['balance'] as int,
  );
}

Map<String, dynamic> _$CustomerModelToJson(CustomerModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'balance': instance.balance,
    };
