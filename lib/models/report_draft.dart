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
  void ensureOvaries() {
    if (rightOvary == null) {
      rightOvary = Ovary(
        side: OvarySide.right,
        type: OvaryType.normal,
        measures: OvaryMeasurement(ap: 0, tr: 0, lo: 0),
        notes: "",
      );
    }
    if (leftOvary == null) {
      leftOvary = Ovary(
        side: OvarySide.left,
        type: OvaryType.normal,
        measures: OvaryMeasurement(ap: 0, tr: 0, lo: 0),
        notes: "",
      );
    }
  }

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
