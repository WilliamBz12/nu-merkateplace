// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OfferModel _$OfferModelFromJson(Map<String, dynamic> json) {
  return OfferModel(
    price: json['price'] as int,
    product: ProductModel.fromJson(json['product'] as Map<String, dynamic>),
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$OfferModelToJson(OfferModel instance) =>
    <String, dynamic>{
      'price': instance.price,
      'id': instance.id,
      'product': instance.product,
    };
