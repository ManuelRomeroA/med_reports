part of 'models.dart';

/// Type of study/protocol used for the ultrasound.
///
/// Uses explicit JSON values to preserve compatibility with existing persisted
/// data which uses uppercase identifiers.
@JsonEnum(alwaysCreate: true)
enum StudyType {
  @JsonValue('ECOSONOGRAMA_PELVICO')
  pelvic,
  @JsonValue('TRANSVAGINAL')
  transvaginal,
  @JsonValue('TRANSRECTAL')
  transrectal,
}

/// Protocol metadata such as the study type and equipment used.
///
/// Example JSON: `{ "type": "TRANSVAGINAL", "equipment": "GE Voluson" }`.
@unfreezed
abstract class StudyProtocol with _$StudyProtocol {
  /// Mutable protocol metadata while editing the report.
  factory StudyProtocol({required StudyType type, String? equipment}) =
      _StudyProtocol;

  /// Deserializes a [StudyProtocol] from JSON.
  factory StudyProtocol.fromJson(Map<String, dynamic> json) =>
      _$StudyProtocolFromJson(json);
}
