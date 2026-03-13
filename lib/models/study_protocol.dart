part of 'models.dart';

/// Enum specifying types of ultrasound study protocols.
@JsonEnum(alwaysCreate: true)
enum StudyType {
  /// [pelvic]: Pelvic ultrasound protocol ("ECOSONOGRAMA_PELVICO").
  @JsonValue('ECOSONOGRAMA_PELVICO')
  pelvic,

  /// [transvaginal]: Transvaginal ultrasound protocol ("TRANSVAGINAL").
  @JsonValue('TRANSVAGINAL')
  transvaginal,

  /// [transrectal]: Transrectal ultrasound protocol ("TRANSRECTAL").
  @JsonValue('TRANSRECTAL')
  transrectal,
}

/// Metadata for ultrasound study protocol configuration.
/// Contains study type and equipment model.
@unfreezed
abstract class StudyProtocol with _$StudyProtocol {
  factory StudyProtocol({
    /// Specifies the type of ultrasound study protocol.
    required StudyType type,

    /// Model or description of the equipment used, if available.
    String? equipment,
  }) = _StudyProtocol;

  /// Creates a StudyProtocol from a JSON map.
  factory StudyProtocol.fromJson(Map<String, dynamic> json) =>
      _$StudyProtocolFromJson(json);
}
