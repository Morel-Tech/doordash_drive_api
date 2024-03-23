import 'package:equatable/equatable.dart';

/// Holds properties for generating a Doordash Drive API token
class AccessKey extends Equatable {
  const AccessKey({
    required this.developerId,
    required this.keyId,
    required this.signingSecret,
  });

  final String developerId;
  final String keyId;
  final String signingSecret;

  @override
  List<Object?> get props => [developerId, keyId, signingSecret];
}
