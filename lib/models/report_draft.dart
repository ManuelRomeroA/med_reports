part of 'models.dart';

@unfreezed
abstract class ReportDraft with _$ReportDraft {
  factory ReportDraft({
    String? id,
    DateTime? createdAt,
    Patient? patient,
    StudyProtocol? protocol,
    Findings? findings,
    Bladder? bladder,
    Ovary? rightOvary,
    Ovary? leftOvary,
    String? doctor,
    String? clinic,
    Map<String, dynamic>? meta,
  }) = _ReportDraft;

  factory ReportDraft.fromJson(Map<String, dynamic> json) =>
      _$ReportDraftFromJson(json);
}

extension ReportDraftX on ReportDraft {
  Report toReport() {
    final now = DateTime.now();
    return Report(
      id: id ?? 'draft-generated-id',
      createdAt: createdAt ?? now,
      patient: patient ?? Patient(id: 'unknown', name: ''),
      protocol: protocol ?? StudyProtocol(type: StudyType.pelvic),
      findings: findings ?? Findings(),
      doctor: doctor,
      clinic: clinic,
      meta: meta,
    );
  }
}
