part of 'models.dart';

@freezed
abstract class Report with _$Report {
  const Report._();

  /// Immutable final report produced when the document is complete.
  ///
  /// This model is intended to be immutable and is the single freezed class
  /// in the models library.
  const factory Report({
    required String id,
    required DateTime createdAt,
    required Patient patient,
    required StudyProtocol protocol,
    required Findings findings,
    String? doctor,
    String? clinic,
    Map<String, dynamic>? meta,
  }) = _Report;

  /// Deserializes a [Report] from JSON.
  factory Report.fromJson(Map<String, dynamic> json) => _$ReportFromJson(json);
}
