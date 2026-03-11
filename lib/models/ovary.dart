part of 'models.dart';

/// Ovary side.
///
/// Represents which ovary the measurements belong to.
enum OvarySide { right, left }

/// Ovary type classification.
enum OvaryType { normal, polycystic, other }

// /// Ovary measurement values (AP, TR, LO) and computed volume.
// @freezed
// class OvaryMeasurement with _$OvaryMeasurement {
//   /// Creates a measurement triple. Values are in millimeters (mm).
//   const factory OvaryMeasurement({double? ap, double? tr, double? lo}) =
//       _OvaryMeasurement;

//   const OvaryMeasurement._();

//   /// Volume calculated using the standard ellipsoid formula: AP * TR * LO * 0.523
//   double get volume => (ap ?? 0) * (tr ?? 0) * (lo ?? 0) * 0.523;

//   /// Deserializes a measurement from JSON.
//   factory OvaryMeasurement.fromJson(Map<String, dynamic> json) =>
//       _$OvaryMeasurementFromJson(json);
// }

/// Ovary measurement values (AP, TR, LO) and computed volume.
///
/// Measurements use millimetres (mm). Use [ap], [tr], [lo] to store the
/// antero-posterior, transverse and longitudinal diameters respectively.
@unfreezed
abstract class OvaryMeasurement with _$OvaryMeasurement {
  OvaryMeasurement._();

  /// Mutable measurement triple for AP/TR/LO in millimetres.
  factory OvaryMeasurement({double? ap, double? tr, double? lo}) =
      _OvaryMeasurement;

  /// Volume calculated using the ellipsoid formula: AP * TR * LO * 0.523.
  double get volume => (ap ?? 0) * (tr ?? 0) * (lo ?? 0) * 0.523;

  /// Deserializes a measurement from JSON.
  factory OvaryMeasurement.fromJson(Map<String, dynamic> json) =>
      _$OvaryMeasurementFromJson(json);
}

/// Ovary domain entity representing one ovary (left or right).
///
/// Use this class to store side, morphological type, measurements and any
/// free-text [notes] observed on the ultrasound.
@unfreezed
abstract class Ovary with _$Ovary {
  /// Mutable ovary record while editing.
  factory Ovary({
    required OvarySide side,
    required OvaryType type,
    OvaryMeasurement? measures,
    String? notes,
  }) = _Ovary;

  /// Deserializes an [Ovary] from JSON.
  factory Ovary.fromJson(Map<String, dynamic> json) => _$OvaryFromJson(json);
}
