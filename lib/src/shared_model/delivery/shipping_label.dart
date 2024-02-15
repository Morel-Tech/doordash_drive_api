import 'package:doordash_drive_api/doordash_drive_api.dart';
import 'package:doordash_drive_api/src/shared_model/delivery/index.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'shipping_label.g.dart';

@JsonSerializable()
class ShippingLabel extends Equatable {
  const ShippingLabel({
    this.labelFormat,
    this.labelSize,
    this.printDensity,
    this.labelString,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [ShippingLabel]
  factory ShippingLabel.fromJson(Map<String, dynamic> json) =>
      _$ShippingLabelFromJson(json);

  /// Converts a [ShippingLabel] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$ShippingLabelToJson(this);

  /// The file format of the label.
  final String? labelFormat;

  /// The size of label.
  final String? labelSize;

  /// The printing density of label.
  final ShippingLabelPrintDensity? printDensity;

  /// A Base64-encoded string of label content.
  final String? labelString;

  @override
  List<Object?> get props => [
        labelFormat,
        labelSize,
        printDensity,
        labelString,
      ];
}
