// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Patient _$PatientFromJson(Map<String, dynamic> json) => _Patient(
  id: json['id'] as String,
  name: json['name'] as String,
  ci: json['ci'] as String?,
  age: (json['age'] as num?)?.toInt(),
  bloodGroup: json['bloodGroup'] as String?,
  fur: json['fur'] == null ? null : DateTime.parse(json['fur'] as String),
  gesta: json['gesta'] as String?,
  para: json['para'] as String?,
  cesarea: json['cesarea'] as String?,
  aborto: json['aborto'] as String?,
  referencia: json['referencia'] as String?,
  motivo: json['motivo'] as String?,
);

Map<String, dynamic> _$PatientToJson(_Patient instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'ci': instance.ci,
  'age': instance.age,
  'bloodGroup': instance.bloodGroup,
  'fur': instance.fur?.toIso8601String(),
  'gesta': instance.gesta,
  'para': instance.para,
  'cesarea': instance.cesarea,
  'aborto': instance.aborto,
  'referencia': instance.referencia,
  'motivo': instance.motivo,
};

_StudyProtocol _$StudyProtocolFromJson(Map<String, dynamic> json) =>
    _StudyProtocol(
      type: $enumDecode(_$StudyTypeEnumMap, json['type']),
      equipment: json['equipment'] as String?,
    );

Map<String, dynamic> _$StudyProtocolToJson(_StudyProtocol instance) =>
    <String, dynamic>{
      'type': _$StudyTypeEnumMap[instance.type]!,
      'equipment': instance.equipment,
    };

const _$StudyTypeEnumMap = {
  StudyType.pelvic: 'ECOSONOGRAMA_PELVICO',
  StudyType.transvaginal: 'TRANSVAGINAL',
  StudyType.transrectal: 'TRANSRECTAL',
};

_OvaryMeasurement _$OvaryMeasurementFromJson(Map<String, dynamic> json) =>
    _OvaryMeasurement(
      ap: (json['ap'] as num?)?.toDouble(),
      tr: (json['tr'] as num?)?.toDouble(),
      lo: (json['lo'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$OvaryMeasurementToJson(_OvaryMeasurement instance) =>
    <String, dynamic>{'ap': instance.ap, 'tr': instance.tr, 'lo': instance.lo};

_Ovary _$OvaryFromJson(Map<String, dynamic> json) => _Ovary(
  side: $enumDecode(_$OvarySideEnumMap, json['side']),
  type: $enumDecode(_$OvaryTypeEnumMap, json['type']),
  measures: json['measures'] == null
      ? null
      : OvaryMeasurement.fromJson(json['measures'] as Map<String, dynamic>),
  notes: json['notes'] as String?,
);

Map<String, dynamic> _$OvaryToJson(_Ovary instance) => <String, dynamic>{
  'side': _$OvarySideEnumMap[instance.side]!,
  'type': _$OvaryTypeEnumMap[instance.type]!,
  'measures': instance.measures,
  'notes': instance.notes,
};

const _$OvarySideEnumMap = {OvarySide.right: 'right', OvarySide.left: 'left'};

const _$OvaryTypeEnumMap = {
  OvaryType.normal: 'normal',
  OvaryType.polycystic: 'polycystic',
  OvaryType.other: 'other',
};

_Bladder _$BladderFromJson(Map<String, dynamic> json) => _Bladder(
  regularity: $enumDecode(_$RegularityEnumMap, json['regularity']),
  wallMm: (json['wallMm'] as num?)?.toDouble(),
  douglasPouch: $enumDecode(_$DouglasPouchEnumMap, json['douglasPouch']),
  diagnosis: $enumDecodeNullable(_$BladderDiagnosisEnumMap, json['diagnosis']),
  ovaryDiagnosis: $enumDecodeNullable(
    _$OvaryDiagnosisEnumMap,
    json['ovaryDiagnosis'],
  ),
  conclusion: json['conclusion'] as String?,
);

Map<String, dynamic> _$BladderToJson(_Bladder instance) => <String, dynamic>{
  'regularity': _$RegularityEnumMap[instance.regularity]!,
  'wallMm': instance.wallMm,
  'douglasPouch': _$DouglasPouchEnumMap[instance.douglasPouch]!,
  'diagnosis': _$BladderDiagnosisEnumMap[instance.diagnosis],
  'ovaryDiagnosis': _$OvaryDiagnosisEnumMap[instance.ovaryDiagnosis],
  'conclusion': instance.conclusion,
};

const _$RegularityEnumMap = {
  Regularity.regular: 'regular',
  Regularity.irregular: 'irregular',
};

const _$DouglasPouchEnumMap = {
  DouglasPouch.free: 'libre',
  DouglasPouch.occupied: 'ocupado',
};

const _$BladderDiagnosisEnumMap = {
  BladderDiagnosis.normal: 'normal',
  BladderDiagnosis.medio: 'medio',
  BladderDiagnosis.alto: 'alto',
  BladderDiagnosis.otro: 'otro',
};

const _$OvaryDiagnosisEnumMap = {
  OvaryDiagnosis.normales: 'normales',
  OvaryDiagnosis.poliquisticos: 'poliquisticos',
  OvaryDiagnosis.otros: 'otros',
};

_Nodules _$NodulesFromJson(Map<String, dynamic> json) => _Nodules(
  has: json['has'] as bool,
  description: json['description'] as String?,
);

Map<String, dynamic> _$NodulesToJson(_Nodules instance) => <String, dynamic>{
  'has': instance.has,
  'description': instance.description,
};

_Findings _$FindingsFromJson(Map<String, dynamic> json) => _Findings(
  uterusDiagnosis: json['uterusDiagnosis'] as String?,
  conclusion: json['conclusion'] as String?,
);

Map<String, dynamic> _$FindingsToJson(_Findings instance) => <String, dynamic>{
  'uterusDiagnosis': instance.uterusDiagnosis,
  'conclusion': instance.conclusion,
};

_Report _$ReportFromJson(Map<String, dynamic> json) => _Report(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  patient: Patient.fromJson(json['patient'] as Map<String, dynamic>),
  protocol: StudyProtocol.fromJson(json['protocol'] as Map<String, dynamic>),
  findings: Findings.fromJson(json['findings'] as Map<String, dynamic>),
  doctor: json['doctor'] as String?,
  clinic: json['clinic'] as String?,
  meta: json['meta'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$ReportToJson(_Report instance) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'patient': instance.patient,
  'protocol': instance.protocol,
  'findings': instance.findings,
  'doctor': instance.doctor,
  'clinic': instance.clinic,
  'meta': instance.meta,
};

_ReportDraft _$ReportDraftFromJson(Map<String, dynamic> json) => _ReportDraft(
  id: json['id'] as String?,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  patient: json['patient'] == null
      ? null
      : Patient.fromJson(json['patient'] as Map<String, dynamic>),
  protocol: json['protocol'] == null
      ? null
      : StudyProtocol.fromJson(json['protocol'] as Map<String, dynamic>),
  findings: json['findings'] == null
      ? null
      : Findings.fromJson(json['findings'] as Map<String, dynamic>),
  bladder: json['bladder'] == null
      ? null
      : Bladder.fromJson(json['bladder'] as Map<String, dynamic>),
  rightOvary: json['rightOvary'] == null
      ? null
      : Ovary.fromJson(json['rightOvary'] as Map<String, dynamic>),
  leftOvary: json['leftOvary'] == null
      ? null
      : Ovary.fromJson(json['leftOvary'] as Map<String, dynamic>),
  doctor: json['doctor'] as String?,
  clinic: json['clinic'] as String?,
  meta: json['meta'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$ReportDraftToJson(_ReportDraft instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'patient': instance.patient,
      'protocol': instance.protocol,
      'findings': instance.findings,
      'bladder': instance.bladder,
      'rightOvary': instance.rightOvary,
      'leftOvary': instance.leftOvary,
      'doctor': instance.doctor,
      'clinic': instance.clinic,
      'meta': instance.meta,
    };
