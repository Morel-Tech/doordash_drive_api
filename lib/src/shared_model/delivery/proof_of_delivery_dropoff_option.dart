import 'package:json_annotation/json_annotation.dart';

@JsonEnum(fieldRename: FieldRename.snake)
enum ProofOfDeliveryDropoffOption {
  photoRequired,
  photoPreferred,
  pinCode,
  none,
}
