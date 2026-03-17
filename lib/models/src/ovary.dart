part of '../models.dart';

/// Indicates laterality of ovary: right, left, or unknown.
/// Use [unknown] for unclassified cases.
@JsonEnum()
enum OvarySide {
  /// Ovario derecho
  @JsonValue('DERECHA')
  right,

  /// Ovario izquierdo
  @JsonValue('IZQUIERDA')
  left,

  /// Lado de ovario desconocido o no clasificado
  @JsonValue('DESCONOCIDO')
  unknown;

  @override
  String toString() => _$OvarySideEnumMap[this] ?? 'DESCONOCIDO';
}

/// Classification of ovarian morphology.
/// Use [unknown] for unclassified cases.
@JsonEnum()
enum OvaryType {
  /// Ovario morfológicamente normal
  @JsonValue('NORMAL')
  normal,

  /// Ovario con aspecto poliquístico
  @JsonValue('POLIQUISTICO')
  polycystic,

  /// Ovario con morfología no clasificada u otra
  @JsonValue('OTRO')
  other,

  /// Tipo de ovario desconocido
  @JsonValue('DESCONOCIDO')
  unknown;

  @override
  String toString() => _$OvaryTypeEnumMap[this] ?? 'DESCONOCIDO';
}

/// Contains ovary measurements (diameters in mm, computed volume).
/// Medición ovárica: diámetros y volumen calculado (mm, mm³).

@unfreezed
abstract class OvaryMeasurement with _$OvaryMeasurement {
  /// Main reason for the medical visit or exam (optional).
  factory OvaryMeasurement({
    /// Diámetro antero-posterior del ovario en mm.
    double? ap,

    /// Diámetro transversal del ovario en mm.
    double? tr,

    /// Diámetro longitudinal del ovario en mm.
    double? lo,

    /// Volumen ovárico calculado en mm³ (opcional).
    double? volume,
  }) = _OvaryMeasurement;

  /// Creates OvaryMeasurement from JSON.
  factory OvaryMeasurement.fromJson(Map<String, dynamic> json) =>
      _$OvaryMeasurementFromJson(json);
}

@unfreezed
abstract class Ovary with _$Ovary {
  /// Main reason for the medical visit or exam (optional).
  factory Ovary({
    /// Lateralidad del ovario (derecha, izquierda, desconocido)
    @JsonKey(unknownEnumValue: OvarySide.unknown)
    @Default(OvarySide.left)
    OvarySide side,

    /// Tipo morfológico del ovario (normal, poliquístico, otro, desconocido)
    @JsonKey(unknownEnumValue: OvaryType.unknown)
    @Default(OvaryType.normal)
    OvaryType type,

    /// Medición diametral ovárica (AP, TR, LO)
    required OvaryMeasurement measures,

    /// Notas adicionales sobre evaluación del ovario
    String? notes,
  }) = _Ovary;

  /// Creates Ovary from JSON.
  factory Ovary.fromJson(Map<String, dynamic> json) => _$OvaryFromJson(json);
}
