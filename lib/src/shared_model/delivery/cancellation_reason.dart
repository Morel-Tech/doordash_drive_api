import 'package:json_annotation/json_annotation.dart';

enum CancellationReason {
  @JsonValue('cancelled_by_creator')
  cancelledByCreator,
  @JsonValue('failed_to_process_payment')
  failedToProcessPayment,
  @JsonValue('failed_to_assign_and_refunded')
  failedToAssignAndRefunded,
  @JsonValue('failed_to_pickup')
  failedToPickup,
  @JsonValue('failed_to_deliver')
  failedToDeliver,
  @JsonValue('failed_to_return')
  failedToReturn,
}
