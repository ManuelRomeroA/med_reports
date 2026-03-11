part of 'models.dart';

/// Wall regularity of the bladder wall.
///
/// `regular` indicates a smooth/uniform wall; `irregular` indicates focal
/// irregularities or defects.
enum Regularity { regular, irregular }

/// Status of the pouch of Douglas (rectouterine pouch).
///
/// The JSON persisted values are Spanish (`libre`/`ocupado`) in existing data;
/// we keep English enum identifiers but map to the legacy strings using
/// `@JsonValue` so existing storage remains compatible.
enum DouglasPouch {
  @JsonValue('libre')
  free,
  @JsonValue('ocupado')
  occupied,
}

/// Bladder findings including wall regularity and Douglas pouch status.
@unfreezed
abstract class Bladder with _$Bladder {
  /// Mutable bladder findings used while editing the report.
  factory Bladder({
    required Regularity regularity,
    double? wallMm,
    required DouglasPouch douglasPouch,
  }) = _Bladder;

  /// Deserializes a [Bladder] from JSON.
  factory Bladder.fromJson(Map<String, dynamic> json) =>
      _$BladderFromJson(json);
}
