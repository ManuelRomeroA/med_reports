part of 'models.dart';

/// Temporary, editable draft for a medical imaging report.
@unfreezed
abstract class ReportDraft with _$ReportDraft {
  /// [id]: Draft unique identifier (optional).
  /// [createdAt]: Timestamp of creation (optional).
  /// [patient]: Patient info data model (optional).
  /// [protocol]: Study protocol data (optional).
  /// [findings]: Clinical findings (optional).
  /// [bladder]: Optional bladder findings.
  /// [rightOvary]: Data for right ovary (required).
  /// [leftOvary]: Data for left ovary (required).
  /// [doctor]: Reporting doctor (optional).
  /// [clinic]: Site or clinic (optional).
  /// [meta]: Extra metadata (optional).
  factory ReportDraft({
    /// Unique identifier for the draft report (optional).
    String? id,

    /// Date and time this draft was created (optional).
    DateTime? createdAt,

    /// Patient information, demographic and clinical data (optional).
    Patient? patient,

    /// Ultrasound protocol and equipment details (optional).
    StudyProtocol? protocol,

    /// Clinical findings documented in the draft (optional).
    Findings? findings,

    /// Optional bladder imaging and findings.
    Bladder? bladder,

    /// Reported data for the right ovary (required).
    required Ovary rightOvary,

    /// Reported data for the left ovary (required).
    required Ovary leftOvary,

    /// Name of the reporting doctor or clinician supervising the draft (optional).
    String? doctor,

    /// Site, service, or clinic where the draft was created (optional).
    String? clinic,

    /// Additional extensible metadata fields (optional).
    Map<String, dynamic>? meta,
  }) = _ReportDraft;

  /// Creates ReportDraft from JSON.
  factory ReportDraft.fromJson(Map<String, dynamic> json) =>
      _$ReportDraftFromJson(json);
}
