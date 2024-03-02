import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'business.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Business extends Equatable {
  const Business({
    required this.name,
    required this.description,
    required this.externalBusinessId,
    required this.activationStatus,
    required this.createdAt,
    required this.lastUpdatedAt,
    required this.isTest,
    required this.externalMetadata,
  });

  factory Business.fromJson(Map<String, dynamic> json) =>
      _$BusinessFromJson(json);

  Map<String, dynamic> toJson() => _$BusinessToJson(this);

  final String name;
  final String description;
  final String externalBusinessId;
  final String activationStatus;
  final DateTime createdAt;
  final DateTime lastUpdatedAt;
  final bool isTest;
  final ExternalMetadata externalMetadata;

  @override
  List<Object?> get props => [
        name,
        description,
        externalBusinessId,
        activationStatus,
        createdAt,
        lastUpdatedAt,
        isTest,
        externalMetadata,
      ];
}

@JsonSerializable()
class ExternalMetadata extends Equatable {
  const ExternalMetadata({
    required this.numberOfStores,
    required this.clientEmail,
    required this.clientPhoneNumber,
    required this.externalStoreIds,
  });

  factory ExternalMetadata.fromJson(Map<String, dynamic> json) =>
      _$ExternalMetadataFromJson(json);

  Map<String, dynamic> toJson() => _$ExternalMetadataToJson(this);

  final String numberOfStores;
  final String clientEmail;
  final String clientPhoneNumber;
  final List<String?> externalStoreIds;

  @override
  List<Object?> get props => [
        numberOfStores,
        clientEmail,
        clientPhoneNumber,
        externalStoreIds,
      ];
}
