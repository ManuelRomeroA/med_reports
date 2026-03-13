part of 'models.dart';

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

    /// Name of the reporting doctor or signee (optional).
    String? doctor,

    /// Clinic, hospital, or site associated with the report (optional).
    String? clinic,

    /// Arbitrary additional metadata (optional).
    Map<String, dynamic>? meta,
  }) = _Report;

  /// Creates a Report from JSON.
  factory Report.fromJson(Map<String, dynamic> json) => _$ReportFromJson(json);
}
