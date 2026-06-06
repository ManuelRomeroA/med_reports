part of '../models.dart';

/// Final immutable model for a signed imaging report.
@freezed
abstract class Report with _$Report {
  const Report._();

  /// [id]: Unique report ID.
  /// [createdAt]: Report creation timestamp.
  /// [patient]: Patient identity and history.
  /// [protocol]: Study protocol and modality data.
  /// [findings]: Clinical findings for this report.
  /// [doctor]: Reporting doctor/clinician (optional).
  /// [clinic]: Clinic or site of report (optional).
  /// [meta]: Extra metadata as key-value map (optional).
  /// [rightOvary]: Right ovary examination findings.
  /// [leftOvary]: Left ovary examination findings.
  /// [uterineFindings]: Uterine measurements and characteristics (optional).
  /// [nodules]: Myometrial nodules findings (optional).
  /// [vaginalState]: Vaginal status assessment (optional).
  /// [cervixState]: Cervical status assessment (optional).
  /// [bladder]: Bladder findings (optional).
  const factory Report({
    /// Unique identifier for this report.
    required String id,

    /// Timestamp when the report was created.
    required DateTime createdAt,

    /// Information identifying the patient of the report.
    required Patient patient,

    /// Study protocol and equipment associated with the report.
    required StudyProtocol protocol,

    /// Clinical findings included in the examination.
    required Findings findings,

    /// Right ovary examination findings.
    required Ovary rightOvary,

    /// Left ovary examination findings.
    required Ovary leftOvary,

    /// Uterine measurements and characteristics (optional).
    UterineFindings? uterineFindings,

    /// Myometrial nodules findings (optional).
    Nodules? nodules,

    /// Vaginal status assessment (optional).
    VaginalStatus? vaginalState,

    /// Cervical status assessment (optional).
    CervicalStatus? cervixState,

    /// Bladder findings (optional).
    Bladder? bladder,

    /// Name of the reporting doctor or signee (optional).
    String? doctor,

    /// Clinic, hospital, or site associated with the report (optional).
    String? clinic,

    /// Arbitrary additional metadata (optional).
    Map<String, dynamic>? meta,
  }) = _Report;

  /// Creates a Report from JSON.
  factory Report.fromJson(Map<String, dynamic> json) => _$ReportFromJson(json);

  /// Creates a Report from a ReportDraft, mapping all available fields.
  /// Uses defaults for required fields when draft values are null.
  factory Report.fromDraft(ReportDraft draft) => Report(
    id: draft.id ?? '',
    createdAt: draft.createdAt ?? DateTime.now(),
    patient: draft.patient ?? Patient(),
    protocol: draft.protocol ?? StudyProtocol(),
    findings: draft.findings ?? Findings(),
    rightOvary: draft.rightOvary,
    leftOvary: draft.leftOvary,
    uterineFindings: draft.uterineFindings,
    nodules: draft.nodules,
    vaginalState: draft.vaginalState,
    cervixState: draft.cervixState,
    bladder: draft.bladder,
    doctor: draft.doctor,
    clinic: draft.clinic,
    meta: draft.meta,
  );
}
