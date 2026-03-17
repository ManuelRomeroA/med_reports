/*
Technical documentation:
All enums in this file are serialized using @JsonValue with their value in Spanish and UPPERCASE for clinical compatibility. However, all code comments and documentation are provided in English for consistency and best practices in the codebase and developer experience.
*/

part of '../models.dart';

/// Describes the location of the uterus in the pelvis, relevant for gynecological diagnosis.
enum UterusLocalization {
  /// Unknown or unspecified value; use when no data is available.
  @JsonValue('DESCONOCIDO')
  unknown,

  /// Uterus located in the central area of the pelvis.
  @JsonValue('CENTRAL')
  central,

  /// [right]: Uterus displaced towards the right side of the pelvis.
  @JsonValue('DERECHA')
  right,

  /// [left]: Uterus displaced towards the left side of the pelvis.
  @JsonValue('IZQUIERDA')
  left;

  @override
  String toString() => _$UterusLocalizationEnumMap[this] ?? 'DESCONOCIDO';
}

/// Describes the axis and usual position of the uterus within the pelvis.
enum UterusPosition {
  /// Unknown or unspecified value.
  @JsonValue('DESCONOCIDO')
  unknown,

  /// Anteverted uterus; the most common position, with the fundus tilted forward towards the bladder.
  @JsonValue('AVF')
  avf,

  /// Retroverted uterus; may be associated with pelvic symptoms or infertility.
  @JsonValue('RVF')
  rvf;

  @override
  String toString() => _$UterusPositionEnumMap[this] ?? 'DESCONOCIDO';
}

/// Describes the appearance of the uterine surface during ultrasound evaluation.
enum UterusSurface {
  /// Unknown or unspecified value.
  @JsonValue('DESCONOCIDO')
  unknown,

  /// Smooth and regular uterine surface, without pathological protrusions.
  @JsonValue('REGULAR')
  regular,

  /// Irregular uterine surface, suggestive of subserosal fibroids or other abnormalities.
  @JsonValue('IRREGULAR')
  irregular;

  @override
  String toString() => _$UterusSurfaceEnumMap[this] ?? 'DESCONOCIDO';
}

/// Characterizes the ultrasound pattern of the myometrium, useful in uterine pathology.
enum MyometriumType {
  /// Unknown or unspecified value.
  @JsonValue('DESCONOCIDO')
  unknown,

  /// Homogeneous appearance, without evident lesions.
  @JsonValue('HOMOGÉNEO')
  homogeneous,

  /// Heterogeneous myometrial echotexture, common in benign pathology.
  @JsonValue('HETEROGÉNEO')
  heterogeneous;

  @override
  String toString() => _$MyometriumTypeEnumMap[this] ?? 'DESCONOCIDO';
}

final endometrios = ['MENST', 'PROLI', 'SECRE', 'ATROF'];

/// Describes the appearance of the endometrium in transvaginal or abdominal ultrasound.
enum EndometriumAspect {
  /// Unknown or unspecified value.
  @JsonValue('DESCONOCIDO')
  unknown,

  /// Thin or atrophic endometrium, often seen in postmenopausal
  @JsonValue('MENST')
  menst,

  /// Proliferative endometrium, with a trilaminar pattern typical of the follicular phase.
  @JsonValue('PROLI')
  proli,

  /// Secretory endometrium, with a homogeneous echotexture and increased thickness.
  @JsonValue('SECRE')
  secre,

  /// Atrophic endometrium, with a thin and hypoechoic appearance, common in postmenop
  @JsonValue('ATROF')
  atrof;

  @override
  String toString() => _$EndometriumAspectEnumMap[this] ?? 'DESCONOCIDO';
}

/// Model for the clinical section of uterine findings in an ultrasound report.
@unfreezed
abstract class UterineFindings with _$UterineFindings {
  factory UterineFindings({
    /// Longitudinal uterine diameter in millimeters; measures the maximum axis of the uterus.
    double? longitud,

    /// Anteroposterior diameter in mm; reference for shape and size.
    double? ap,

    /// Transverse diameter in mm; useful for volumetric calculations and morphological alterations.
    double? transverse,

    /// Auxiliary uterine measurement in mm; may record variants or focal findings.
    double? other,

    /// Calculated uterine volume in cubic millimeters; evaluates growth, hypertrophy, or reduction.
    double? volume,

    /// Anatomical localization of the uterus in the pelvis.
    @JsonKey(unknownEnumValue: UterusLocalization.central)
    @Default(UterusLocalization.central)
    UterusLocalization localization,

    /// Physiological or pathological position of the uterus.
    @JsonKey(unknownEnumValue: UterusPosition.avf)
    @Default(UterusPosition.avf)
    UterusPosition position,

    /// Appearance of the uterine surface on ultrasound.
    @JsonKey(unknownEnumValue: UterusSurface.regular)
    @Default(UterusSurface.regular)
    UterusSurface surface,

    /// Type or ultrasound pattern of the observed myometrium.
    @JsonKey(unknownEnumValue: MyometriumType.homogeneous)
    @Default(MyometriumType.homogeneous)
    MyometriumType myometrium,

    /// Appearance of the endometrium detected in the study.
    @JsonKey(unknownEnumValue: EndometriumAspect.proli)
    @Default(EndometriumAspect.proli)
    EndometriumAspect endometrium,
  }) = _UterineFindings;

  /// Constructor from a JSON structure for uterine findings.
  factory UterineFindings.fromJson(Map<String, dynamic> json) =>
      _$UterineFindingsFromJson(json);
}
