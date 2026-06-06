part of '../models.dart';

/// Bladder data model for imaging reports.
/// Stores wall regularity, Douglas pouch status, wall thickness, and diagnosis fields.
/// [regularity]: Describes the texture and uniformity of the bladder wall.
/// [douglasPouch]: Status indicating if the Pouch of Douglas is free or occupied.
/// [diagnosis]: Associated bladder-specific diagnosis if applicable.
/// [ovaryDiagnosis]: Related ovary diagnosis in the context of the bladder evaluation.
/// [wallMm]: Measured thickness of the bladder wall in millimeters.
/// [conclusion]: Free-text clinical conclusion or additional imaging notes.
@unfreezed
abstract class Bladder with _$Bladder {
  factory Bladder({
    /// [regularity]: Regularity of the bladder wall (required).
    @JsonKey(unknownEnumValue: Regularity.regular)
    @Default(Regularity.regular)
    Regularity regularity,

    /// [douglasPouch]: Status of Douglas pouch (free or occupied).
    @JsonKey(unknownEnumValue: DouglasPouch.free)
    @Default(DouglasPouch.free)
    DouglasPouch douglasPouch,

    /// [diagnosis]: Diagnosis related to the bladder, if any (optional).
    @JsonKey(unknownEnumValue: BladderDiagnostic.other)
    @Default(BladderDiagnostic.other)
    BladderDiagnostic? diagnosis,

    /// [ovaryDiagnosis]: Ovary diagnosis contextually relevant to the bladder (optional).
    @JsonKey(unknownEnumValue: OvaryDiagnostic.other)
    @Default(OvaryDiagnostic.other)
    OvaryDiagnostic? ovaryDiagnosis,

    /// [wallMm]: Thickness of the bladder wall in millimeters (optional).
    double? wallMm,

    /// [conclusion]: Free-text conclusion or imaging comment (optional).
    String? conclusion,
  }) = _Bladder;

  /// Creates a Bladder object from a JSON map.
  factory Bladder.fromJson(Map<String, dynamic> json) =>
      _$BladderFromJson(json);
}
