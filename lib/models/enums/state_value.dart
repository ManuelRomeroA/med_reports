part of '../models.dart';

/// Represents the state of a clinical status (normal, other, or unknown).
@JsonEnum(alwaysCreate: true)
enum StateValue {
  @JsonValue("NORMAL")
  normal,
  @JsonValue("OTRO")
  other,
  @JsonValue("DESCONOCIDO")
  unknown;

  @override
  String toString() => _$StateValueEnumMap[this] ?? 'DESCONOCIDO';
}
