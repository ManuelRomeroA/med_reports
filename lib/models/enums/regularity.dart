part of '../models.dart';

/// Represents bladder and Douglas pouch findings in an imaging report.
enum Regularity {
  /// [regular]: Bladder wall is smooth and uniform.
  @JsonValue('REGULAR')
  regular,

  /// [irregular]: Focal or diffuse irregularities detected in the bladder wall.
  @JsonValue('IRREGULAR')
  irregular;

  @override
  String toString() => _$RegularityEnumMap[this] ?? 'REGULAR';
}

enum DouglasPouch {
  /// [free]: Pouch of Douglas free, no pathological content.
  @JsonValue('LIBRE')
  free,

  /// [occupied]: Pathological occupation (fluid, tissue, mass).
  @JsonValue('OCUPADO')
  occupied;

  @override
  String toString() => _$DouglasPouchEnumMap[this] ?? 'LIBRE';
}
