import 'package:json_annotation/json_annotation.dart';

enum DeliveryStatus {
  @JsonValue('quote')
  quote,
  @JsonValue('created')
  created,
  @JsonValue('confirmed')
  confirmed,
  @JsonValue('enroute_to_pickup')
  enrouteToPickup,
  @JsonValue('arrived_at_pickup')
  arrivedAtPickup,
  @JsonValue('picked_up')
  pickedUp,
  @JsonValue('enroute_to_dropoff')
  enrouteToDropoff,
  @JsonValue('arrived_at_dropoff')
  arrivedAtDropoff,
  @JsonValue('delivered')
  delivered,
  @JsonValue('enroute_to_return')
  enrouteToReturn,
  @JsonValue('arrived_at_return')
  arrivedAtReturn,
  @JsonValue('returned')
  returned,
  @JsonValue('cancelled')
  cancelled,
}
