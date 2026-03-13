part of 'models.dart';

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
  /// [ap]: Antero-posterior diameter, mm.
  /// [tr]: Transverse diameter, mm.
  /// [lo]: Longitudinal diameter, mm.
  factory OvaryMeasurement({
    /// Antero-posterior ovarian diameter, in millimeters.
    required double ap,

    /// Transverse ovarian diameter, in millimeters.
    required double tr,

    /// Longitudinal ovarian diameter, in millimeters.
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
  /// [side]: Ovary laterality.
  /// [type]: Morphological classification.
  /// [measures]: Linear measurements (AP/TR/LO).
  /// [notes]: Optional notes.
  factory Ovary({
    /// Indicates laterality—whether this is the right or left ovary.
    required OvarySide side,

    /// Classifies the morphology of the ovary.
    required OvaryType type,

    /// Ovarian diameter measurements (AP, TR, LO).
    required OvaryMeasurement measures,

    /// Optional notes and comments describing the ovary.
    String? notes,
  }) = _Ovary;

  /// Creates Ovary from JSON.
  factory Ovary.fromJson(Map<String, dynamic> json) => _$OvaryFromJson(json);
}
