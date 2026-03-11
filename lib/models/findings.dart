part of 'models.dart';

/// Aggregated findings for the pelvic ultrasound.
///
/// Contains organ-specific findings (bladder, ovaries) and free-text
/// diagnostic/conclusion fields used in the report generation UI.
@unfreezed
abstract class Findings with _$Findings {
  /// Mutable aggregated findings while the report is being filled.
  factory Findings({String? uterusDiagnosis, String? conclusion}) = _Findings;

  /// Deserializes [Findings] from JSON.
  factory Findings.fromJson(Map<String, dynamic> json) =>
      _$FindingsFromJson(json);
}
