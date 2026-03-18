part of '../models.dart';

enum OvaryDiagnostic {
  /// [normales]: Normal ovarian findings.
  @JsonValue('NORMALES')
  normales,

  /// [poliquisticos]: Polycystic ovary findings.
  @JsonValue('POLIQUISTICOS')
  poliquisticos,

  /// [otros]: Other or ambiguous findings.
  @JsonValue('OTROS')
  other;

  @override
  String toString() => _$OvaryDiagnosticEnumMap[this] ?? 'OTROS';
}
