part of 'models.dart';

/// Aggregates clinical findings for a pelvic ultrasound study.
@unfreezed
abstract class Findings with _$Findings {
  /// Optional text description detailing the uterine diagnosis.
  /// Optional overall conclusion in free-text form summarizing findings.
  factory Findings({String? uterusDiagnosis, String? conclusion}) = _Findings;

  /// Creates Findings from JSON.
  factory Findings.fromJson(Map<String, dynamic> json) =>
      _$FindingsFromJson(json);
}
