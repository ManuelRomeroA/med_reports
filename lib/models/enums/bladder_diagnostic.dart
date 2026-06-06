part of '../models.dart';

/// Classification of bladder diagnostic findings.
@JsonEnum(alwaysCreate: true)
enum BladderDiagnostic {
  /// [normal]: Normal findings.
  @JsonValue('NORMAL')
  normal,

  /// [medio]: Intermediate severity diagnosis.
  @JsonValue('MEDIO')
  medio,

  /// [alto]: Severe or advanced abnormalities.
  @JsonValue('ALTO')
  alto,

  /// [otro]: Other diagnosis not covered.
  @JsonValue('OTRO')
  other;

  @override
  String toString() => _$BladderDiagnosticEnumMap[this] ?? 'OTRO';
}
