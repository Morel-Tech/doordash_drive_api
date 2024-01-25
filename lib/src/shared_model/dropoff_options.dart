import 'package:doordash_drive_api/doordash_drive_api.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'dropoff_options.g.dart';

@JsonSerializable()
class DropoffOptions extends Equatable {
  const DropoffOptions(
    this.signature,
    this.idVerification,
    this.proofOfDelivery,
  );

  /// Converts a [Map]<[String], [dynamic]> to a [DropoffOptions]
  factory DropoffOptions.fromJson(Map<String, dynamic> json) =>
      _$DropoffOptionsFromJson(json);

  /// Converts a [DropoffOptions] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$DropoffOptionsToJson(this);

  final SignatureDropoffOption? signature;

  final IdVerificationDropoffOption? idVerification;

  final ProofOfDeliveryDropoffOption? proofOfDelivery;

  @override
  List<Object?> get props => [signature, idVerification, proofOfDelivery];
}
