import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'accept_quote.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class AcceptQuoteRequest extends Equatable {
  const AcceptQuoteRequest({
    required this.tip,
    required this.dropoffPhoneNumber,
  });

  /// Creates an instance of [AcceptQuoteRequest] from
  /// a [Map<String, dynamic>] (json) type.
  factory AcceptQuoteRequest.fromJson(Map<String, dynamic> json) =>
      _$AcceptQuoteRequestFromJson(json);

  /// Returns a json representation of [Map<String, dynamic>] from
  /// an [AcceptQuoteRequest] type.
  Map<String, dynamic> toJson() => _$AcceptQuoteRequestToJson(this);

  /// The tip amount. Use cents or the equivalent lowest currency denomination
  ///
  /// (e.g. $5.99 = 599).
  final int tip;

  /// The phone number for the Dasher to call if there are any issues
  /// with the delivery. Should include the country code.
  ///
  /// Must adhere to E.164 international phone number standard.
  final String dropoffPhoneNumber;

  @override
  List<Object?> get props => [
        tip,
        dropoffPhoneNumber,
      ];
}
