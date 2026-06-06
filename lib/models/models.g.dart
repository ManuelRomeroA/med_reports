// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Patient _$PatientFromJson(Map<String, dynamic> json) => _Patient(
  id: json['id'] as String?,
  name: json['name'] as String?,
  ci: json['ci'] as String?,
  age: (json['age'] as num?)?.toInt(),
  bloodType:
      $enumDecodeNullable(
        _$BloodTypeEnumMap,
        json['bloodType'],
        unknownValue: BloodType.unknow,
      ) ??
      BloodType.unknow,
  fur: json['fur'] == null ? null : DateTime.parse(json['fur'] as String),
  gesta: json['gesta'] as String?,
  para: json['para'] as String?,
  cesarea: json['cesarea'] as String?,
  aborto: json['aborto'] as String?,
  period:
      $enumDecodeNullable(
        _$PeriodTypeEnumMap,
        json['period'],
        unknownValue: PeriodType.normal,
      ) ??
      PeriodType.normal,
  reference: json['reference'] as String?,
  motivo: json['motivo'] as String?,
);

Map<String, dynamic> _$PatientToJson(_Patient instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'ci': instance.ci,
  'age': instance.age,
  'bloodType': _$BloodTypeEnumMap[instance.bloodType]!,
  'fur': instance.fur?.toIso8601String(),
  'gesta': instance.gesta,
  'para': instance.para,
  'cesarea': instance.cesarea,
  'aborto': instance.aborto,
  'period': _$PeriodTypeEnumMap[instance.period]!,
  'reference': instance.reference,
  'motivo': instance.motivo,
};

const _$BloodTypeEnumMap = {
  BloodType.ap: 'A+',
  BloodType.an: 'A-',
  BloodType.bp: 'B+',
  BloodType.bn: 'B-',
  BloodType.abp: 'AB+',
  BloodType.abn: 'AB-',
  BloodType.op: 'O+',
  BloodType.on: 'O-',
  BloodType.unknow: 'DESCONOCIDO',
};

const _$PeriodTypeEnumMap = {
  PeriodType.regular: 'REGULAR',
  PeriodType.excesiva: 'EXCESIVA',
  PeriodType.normal: 'NORMAL',
  PeriodType.escasa: 'ESCASA',
  PeriodType.unknow: 'DESCONOCIDA',
};

_StudyProtocol _$StudyProtocolFromJson(Map<String, dynamic> json) =>
    _StudyProtocol(
      type:
          $enumDecodeNullable(
            _$StudyTypeEnumMap,
            json['type'],
            unknownValue: StudyType.unknow,
          ) ??
          StudyType.unknow,
      equipment: json['equipment'] as String?,
    );

Map<String, dynamic> _$StudyProtocolToJson(_StudyProtocol instance) =>
    <String, dynamic>{
      'type': _$StudyTypeEnumMap[instance.type]!,
      'equipment': instance.equipment,
    };

const _$StudyTypeEnumMap = {
  StudyType.pelvic: 'ECOSONOGRAMA PELVICO',
  StudyType.transvaginal: 'TRANSVAGINAL',
  StudyType.transrectal: 'TRANSRECTAL',
  StudyType.unknow: 'DESCONOCIDO',
};

_OvaryMeasurement _$OvaryMeasurementFromJson(Map<String, dynamic> json) =>
    _OvaryMeasurement(
      ap: (json['ap'] as num?)?.toDouble(),
      tr: (json['tr'] as num?)?.toDouble(),
      lo: (json['lo'] as num?)?.toDouble(),
      volume: (json['volume'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$OvaryMeasurementToJson(_OvaryMeasurement instance) =>
    <String, dynamic>{
      'ap': instance.ap,
      'tr': instance.tr,
      'lo': instance.lo,
      'volume': instance.volume,
    };

_Ovary _$OvaryFromJson(Map<String, dynamic> json) => _Ovary(
  side: $enumDecode(
    _$OvarySideEnumMap,
    json['side'],
    unknownValue: OvarySide.unknown,
  ),
  type:
      $enumDecodeNullable(
        _$OvaryTypeEnumMap,
        json['type'],
        unknownValue: OvaryType.unknown,
      ) ??
      OvaryType.normal,
  measures: OvaryMeasurement.fromJson(json['measures'] as Map<String, dynamic>),
  notes: json['notes'] as String?,
);

Map<String, dynamic> _$OvaryToJson(_Ovary instance) => <String, dynamic>{
  'side': _$OvarySideEnumMap[instance.side]!,
  'type': _$OvaryTypeEnumMap[instance.type]!,
  'measures': instance.measures,
  'notes': instance.notes,
};

const _$OvarySideEnumMap = {
  OvarySide.right: 'DERECHA',
  OvarySide.left: 'IZQUIERDA',
  OvarySide.unknown: 'DESCONOCIDO',
};

const _$OvaryTypeEnumMap = {
  OvaryType.normal: 'NORMAL',
  OvaryType.polycystic: 'POLIQUISTICO',
  OvaryType.other: 'OTRO',
  OvaryType.unknown: 'DESCONOCIDO',
};

_Bladder _$BladderFromJson(Map<String, dynamic> json) => _Bladder(
  regularity:
      $enumDecodeNullable(
        _$RegularityEnumMap,
        json['regularity'],
        unknownValue: Regularity.regular,
      ) ??
      Regularity.regular,
  douglasPouch:
      $enumDecodeNullable(
        _$DouglasPouchEnumMap,
        json['douglasPouch'],
        unknownValue: DouglasPouch.free,
      ) ??
      DouglasPouch.free,
  diagnosis:
      $enumDecodeNullable(
        _$BladderDiagnosticEnumMap,
        json['diagnosis'],
        unknownValue: BladderDiagnostic.other,
      ) ??
      BladderDiagnostic.other,
  ovaryDiagnosis:
      $enumDecodeNullable(
        _$OvaryDiagnosticEnumMap,
        json['ovaryDiagnosis'],
        unknownValue: OvaryDiagnostic.other,
      ) ??
      OvaryDiagnostic.other,
  wallMm: (json['wallMm'] as num?)?.toDouble(),
  conclusion: json['conclusion'] as String?,
);

Map<String, dynamic> _$BladderToJson(_Bladder instance) => <String, dynamic>{
  'regularity': _$RegularityEnumMap[instance.regularity]!,
  'douglasPouch': _$DouglasPouchEnumMap[instance.douglasPouch]!,
  'diagnosis': _$BladderDiagnosticEnumMap[instance.diagnosis],
  'ovaryDiagnosis': _$OvaryDiagnosticEnumMap[instance.ovaryDiagnosis],
  'wallMm': instance.wallMm,
  'conclusion': instance.conclusion,
};

const _$RegularityEnumMap = {
  Regularity.regular: 'REGULAR',
  Regularity.irregular: 'IRREGULAR',
};

const _$DouglasPouchEnumMap = {
  DouglasPouch.free: 'LIBRE',
  DouglasPouch.occupied: 'OCUPADO',
};

const _$BladderDiagnosticEnumMap = {
  BladderDiagnostic.normal: 'NORMAL',
  BladderDiagnostic.medio: 'MEDIO',
  BladderDiagnostic.alto: 'ALTO',
  BladderDiagnostic.other: 'OTRO',
};

const _$OvaryDiagnosticEnumMap = {
  OvaryDiagnostic.normales: 'NORMALES',
  OvaryDiagnostic.poliquisticos: 'POLIQUISTICOS',
  OvaryDiagnostic.other: 'OTROS',
};

_Nodules _$NodulesFromJson(Map<String, dynamic> json) => _Nodules(
  hasNodules: json['hasNodules'] as bool? ?? false,
  detail: json['detail'] == null
      ? null
      : NoduleDetail.fromJson(json['detail'] as Map<String, dynamic>),
);

Map<String, dynamic> _$NodulesToJson(_Nodules instance) => <String, dynamic>{
  'hasNodules': instance.hasNodules,
  'detail': instance.detail,
};

_NoduleDetail _$NoduleDetailFromJson(Map<String, dynamic> json) =>
    _NoduleDetail(
      location:
          $enumDecodeNullable(_$NoduleLocationEnumMap, json['location']) ??
          NoduleLocation.unknown,
      longitud: (json['longitud'] as num?)?.toDouble() ?? 0.0,
      ap: (json['ap'] as num?)?.toDouble() ?? 0.0,
      t: (json['t'] as num?)?.toDouble() ?? 0.0,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$NoduleDetailToJson(_NoduleDetail instance) =>
    <String, dynamic>{
      'location': _$NoduleLocationEnumMap[instance.location]!,
      'longitud': instance.longitud,
      'ap': instance.ap,
      't': instance.t,
      'description': instance.description,
    };

const _$NoduleLocationEnumMap = {
  NoduleLocation.unknown: 'DESCONOCIDO',
  NoduleLocation.fondo: 'FONDO',
  NoduleLocation.paredAnterior: 'PARED ANTERIOR',
  NoduleLocation.paredPosterior: 'PARED POSTERIOR',
  NoduleLocation.lateral: 'LATERAL',
  NoduleLocation.otros: 'OTROS',
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
  rightOvary: Ovary.fromJson(json['rightOvary'] as Map<String, dynamic>),
  leftOvary: Ovary.fromJson(json['leftOvary'] as Map<String, dynamic>),
  uterineFindings: json['uterineFindings'] == null
      ? null
      : UterineFindings.fromJson(
          json['uterineFindings'] as Map<String, dynamic>,
        ),
  nodules: json['nodules'] == null
      ? null
      : Nodules.fromJson(json['nodules'] as Map<String, dynamic>),
  vaginalState: json['vaginalState'] == null
      ? null
      : VaginalStatus.fromJson(json['vaginalState'] as Map<String, dynamic>),
  cervixState: json['cervixState'] == null
      ? null
      : CervicalStatus.fromJson(json['cervixState'] as Map<String, dynamic>),
  bladder: json['bladder'] == null
      ? null
      : Bladder.fromJson(json['bladder'] as Map<String, dynamic>),
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
  'rightOvary': instance.rightOvary,
  'leftOvary': instance.leftOvary,
  'uterineFindings': instance.uterineFindings,
  'nodules': instance.nodules,
  'vaginalState': instance.vaginalState,
  'cervixState': instance.cervixState,
  'bladder': instance.bladder,
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
  rightOvary: Ovary.fromJson(json['rightOvary'] as Map<String, dynamic>),
  leftOvary: Ovary.fromJson(json['leftOvary'] as Map<String, dynamic>),
  doctor: json['doctor'] as String?,
  clinic: json['clinic'] as String?,
  meta: json['meta'] as Map<String, dynamic>?,
  uterineFindings: json['uterineFindings'] == null
      ? null
      : UterineFindings.fromJson(
          json['uterineFindings'] as Map<String, dynamic>,
        ),
  nodules: json['nodules'] == null
      ? null
      : Nodules.fromJson(json['nodules'] as Map<String, dynamic>),
  vaginalState: json['vaginalState'] == null
      ? null
      : VaginalStatus.fromJson(json['vaginalState'] as Map<String, dynamic>),
  cervixState: json['cervixState'] == null
      ? null
      : CervicalStatus.fromJson(json['cervixState'] as Map<String, dynamic>),
  bladder: json['bladder'] == null
      ? null
      : Bladder.fromJson(json['bladder'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ReportDraftToJson(_ReportDraft instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'patient': instance.patient,
      'protocol': instance.protocol,
      'findings': instance.findings,
      'rightOvary': instance.rightOvary,
      'leftOvary': instance.leftOvary,
      'doctor': instance.doctor,
      'clinic': instance.clinic,
      'meta': instance.meta,
      'uterineFindings': instance.uterineFindings,
      'nodules': instance.nodules,
      'vaginalState': instance.vaginalState,
      'cervixState': instance.cervixState,
      'bladder': instance.bladder,
    };

_UterineFindings _$UterineFindingsFromJson(Map<String, dynamic> json) =>
    _UterineFindings(
      longitud: (json['longitud'] as num?)?.toDouble(),
      ap: (json['ap'] as num?)?.toDouble(),
      transverse: (json['transverse'] as num?)?.toDouble(),
      other: (json['other'] as num?)?.toDouble(),
      volume: (json['volume'] as num?)?.toDouble(),
      localization:
          $enumDecodeNullable(
            _$UterusLocalizationEnumMap,
            json['localization'],
            unknownValue: UterusLocalization.central,
          ) ??
          UterusLocalization.central,
      position:
          $enumDecodeNullable(
            _$UterusPositionEnumMap,
            json['position'],
            unknownValue: UterusPosition.avf,
          ) ??
          UterusPosition.avf,
      surface:
          $enumDecodeNullable(
            _$UterusSurfaceEnumMap,
            json['surface'],
            unknownValue: UterusSurface.regular,
          ) ??
          UterusSurface.regular,
      myometrium:
          $enumDecodeNullable(
            _$MyometriumTypeEnumMap,
            json['myometrium'],
            unknownValue: MyometriumType.homogeneous,
          ) ??
          MyometriumType.homogeneous,
      endometrium:
          $enumDecodeNullable(
            _$EndometriumAspectEnumMap,
            json['endometrium'],
            unknownValue: EndometriumAspect.proli,
          ) ??
          EndometriumAspect.proli,
    );

Map<String, dynamic> _$UterineFindingsToJson(_UterineFindings instance) =>
    <String, dynamic>{
      'longitud': instance.longitud,
      'ap': instance.ap,
      'transverse': instance.transverse,
      'other': instance.other,
      'volume': instance.volume,
      'localization': _$UterusLocalizationEnumMap[instance.localization]!,
      'position': _$UterusPositionEnumMap[instance.position]!,
      'surface': _$UterusSurfaceEnumMap[instance.surface]!,
      'myometrium': _$MyometriumTypeEnumMap[instance.myometrium]!,
      'endometrium': _$EndometriumAspectEnumMap[instance.endometrium]!,
    };

const _$UterusLocalizationEnumMap = {
  UterusLocalization.unknown: 'DESCONOCIDO',
  UterusLocalization.central: 'CENTRAL',
  UterusLocalization.right: 'DERECHA',
  UterusLocalization.left: 'IZQUIERDA',
};

const _$UterusPositionEnumMap = {
  UterusPosition.unknown: 'DESCONOCIDO',
  UterusPosition.avf: 'AVF',
  UterusPosition.rvf: 'RVF',
};

const _$UterusSurfaceEnumMap = {
  UterusSurface.unknown: 'DESCONOCIDO',
  UterusSurface.regular: 'REGULAR',
  UterusSurface.irregular: 'IRREGULAR',
};

const _$MyometriumTypeEnumMap = {
  MyometriumType.unknown: 'DESCONOCIDO',
  MyometriumType.homogeneous: 'HOMOGÉNEO',
  MyometriumType.heterogeneous: 'HETEROGÉNEO',
};

const _$EndometriumAspectEnumMap = {
  EndometriumAspect.unknown: 'DESCONOCIDO',
  EndometriumAspect.menst: 'MENST',
  EndometriumAspect.proli: 'PROLI',
  EndometriumAspect.secre: 'SECRE',
  EndometriumAspect.atrof: 'ATROF',
};

_VaginalStatus _$VaginalStatusFromJson(Map<String, dynamic> json) =>
    _VaginalStatus(
      status:
          $enumDecodeNullable(
            _$StateValueEnumMap,
            json['status'],
            unknownValue: StateValue.unknown,
          ) ??
          StateValue.normal,
      note: json['note'] as String?,
    );

Map<String, dynamic> _$VaginalStatusToJson(_VaginalStatus instance) =>
    <String, dynamic>{
      'status': _$StateValueEnumMap[instance.status]!,
      'note': instance.note,
    };

const _$StateValueEnumMap = {
  StateValue.normal: 'NORMAL',
  StateValue.other: 'OTRO',
  StateValue.unknown: 'DESCONOCIDO',
};

_CervicalStatus _$CervicalStatusFromJson(Map<String, dynamic> json) =>
    _CervicalStatus(
      status:
          $enumDecodeNullable(
            _$StateValueEnumMap,
            json['status'],
            unknownValue: StateValue.unknown,
          ) ??
          StateValue.normal,
      note: json['note'] as String?,
    );

Map<String, dynamic> _$CervicalStatusToJson(_CervicalStatus instance) =>
    <String, dynamic>{
      'status': _$StateValueEnumMap[instance.status]!,
      'note': instance.note,
    };
