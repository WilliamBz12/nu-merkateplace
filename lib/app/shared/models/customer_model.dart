import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'customer_model.g.dart';

@CopyWith()
@JsonSerializable()
class CustomerModel {
  final String name;
  final int balance;

  CustomerModel({required this.name, required this.balance});

  factory CustomerModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerModelFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerModelToJson(this);
}
