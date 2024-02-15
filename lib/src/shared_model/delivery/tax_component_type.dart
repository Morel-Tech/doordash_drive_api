import 'package:json_annotation/json_annotation.dart';

@JsonEnum(fieldRename: FieldRename.snake)
enum TaxComponentType {
  taxTypeUnspecified,
  gstHst,
  qst,
  pst,
  unrecognized,
}
