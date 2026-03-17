part of '../models.dart';

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
