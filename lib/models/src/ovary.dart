part of '../models.dart';

/// Indicates laterality of ovary: right or left.
enum OvarySide {
  /// Designates the right ovary.
  right,

  /// Designates the left ovary.
  left,
}

/// Classification of ovarian morphology.
enum OvaryType {
  /// Morphologically normal ovary.
  normal,

  /// Indicates polycystic ovary appearance.
  polycystic,

  /// Other or unclassified morphology.
  other,
}

/// Contains ovary measurements (diameters in mm, computed volume).
@unfreezed
abstract class OvaryMeasurement with _$OvaryMeasurement {
  factory OvaryMeasurement({
    /// [ap]: Antero-posterior diameter, mm.
    required double ap,

    /// [tr]: Transverse diameter, mm.
    required double tr,

    /// [lo]: Longitudinal diameter, mm.
    required double lo,
  }) = _OvaryMeasurement;

  OvaryMeasurement._();

  /// [volume]: Computed ovarian volume (mm³).
  double get volume => (ap) * (tr) * (lo) * 0.523;

  /// Creates OvaryMeasurement from JSON.
  factory OvaryMeasurement.fromJson(Map<String, dynamic> json) =>
      _$OvaryMeasurementFromJson(json);
}

/// Represents a single ovary report entity for ultrasound.
@unfreezed
abstract class Ovary with _$Ovary {
  /// [notes]: Optional notes.
  factory Ovary({
    /// [side]: Ovary laterality.
    required OvarySide side,

    /// [type]: Morphological classification.
    required OvaryType type,

    /// Ovarian diameter measurements (AP, TR, LO).
    required OvaryMeasurement measures,

    /// [measures]: Linear measurements (AP/TR/LO).
    String? notes,
  }) = _Ovary;

  /// Creates Ovary from JSON.
  factory Ovary.fromJson(Map<String, dynamic> json) => _$OvaryFromJson(json);
}
