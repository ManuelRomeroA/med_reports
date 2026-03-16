part of 'models.dart';

/// Temporary, editable draft for a medical imaging report.
@unfreezed
abstract class ReportDraft with _$ReportDraft {
  factory ReportDraft({
    /// [id]: Draft unique identifier (optional).
    String? id,

    /// [createdAt]: Timestamp of creation (optional).
    DateTime? createdAt,

    /// [patient]: Patient info data model (optional).
    Patient? patient,

    /// [protocol]: Study protocol data (optional).
    StudyProtocol? protocol,

    /// [findings]: Clinical findings (optional).
    Findings? findings,

    /// [bladder]: Optional bladder findings.
    Bladder? bladder,

    /// [rightOvary]: Data for right ovary (required).
    required Ovary rightOvary,

    /// [leftOvary]: Data for left ovary (required).
    required Ovary leftOvary,

    /// [doctor]: Reporting doctor (optional).
    String? doctor,

    /// [clinic]: Site or clinic (optional).
    String? clinic,

    /// [meta]: Extra metadata (optional).
    Map<String, dynamic>? meta,
  }) = _ReportDraft;

  /// Creates ReportDraft from JSON.
  factory ReportDraft.fromJson(Map<String, dynamic> json) =>
      _$ReportDraftFromJson(json);
}
