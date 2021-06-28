import 'package:json_annotation/json_annotation.dart';

import 'product_model.dart';
part 'offer_model.g.dart';

@JsonSerializable()
class OfferModel {
  int price;
  String id;
  ProductModel product;

  OfferModel({
    required this.price,
    required this.product,
    required this.id,
  });

  factory OfferModel.fromJson(Map<String, dynamic> json) =>
      _$OfferModelFromJson(json);

  Map<String, dynamic> toJson() => _$OfferModelToJson(this);
}
