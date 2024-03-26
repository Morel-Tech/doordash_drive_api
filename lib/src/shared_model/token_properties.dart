import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'token_properties.g.dart';

/// Holds properties for generating a Doordash Drive API token
@JsonSerializable()
class TokenProperties extends Equatable {
  const TokenProperties({
    required this.developerId,
    required this.keyId,
    required this.signingSecret,
  });

  factory TokenProperties.fromJson(Map<String, dynamic> json) =>
      _$TokenPropertiesFromJson(json);

  final String developerId;
  final String keyId;
  final String signingSecret;

  @override
  List<Object?> get props => [developerId, keyId, signingSecret];
}
