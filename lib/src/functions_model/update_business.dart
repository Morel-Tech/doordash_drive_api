import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_business.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class UpdateBusinessRequest extends Equatable {
  const UpdateBusinessRequest({
    this.name,
    this.description,
    this.activationStatus,
  });

  factory UpdateBusinessRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateBusinessRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateBusinessRequestToJson(this);

  final String? name;
  final String? description;
  final String? activationStatus;

  @override
  List<Object?> get props => [
        name,
        description,
        activationStatus,
      ];
}
