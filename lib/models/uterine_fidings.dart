part of 'models.dart';

/// Temporary, editable draft for a medical imaging report.
@unfreezed
abstract class UterineFindings with _$UterineFindings {
  factory UterineFindings({
    /// [longitud]
    double? longitud,

    /// [ap]
    double? ap,

    /// [transverse]
    double? transverse,

    /// [other]
    double? other,

    /// [volume]
    double? volume,

    /// [localization]
    String? localization,

    /// [position]
    String? position,

    /// [surface]
    String? surface,

    /// [myometrium]
    String? myometrium,

    /// [endometrium]
    String? endometrium,
  }) = _ReportDraft;

  /// Creates UterineFindings from JSON.
  factory UterineFindings.fromJson(Map<String, dynamic> json) =>
      _$ReportDraftFromJson(json);
}
