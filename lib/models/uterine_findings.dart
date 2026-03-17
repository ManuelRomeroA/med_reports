/*
Technical documentation:
All enums in this file are serialized using @JsonValue with their value in Spanish and UPPERCASE for clinical compatibility. However, all code comments and documentation are provided in English for consistency and best practices in the codebase and developer experience.
*/

part of 'models.dart';

/// Describes the location of the uterus in the pelvis, relevant for gynecological diagnosis.
enum UterusLocalization {
  /// Unknown or unspecified value; use when no data is available.
  @JsonValue('DESCONOCIDO')
  unknow,

  /// Uterus located towards the anterior region of the pelvis.
  @JsonValue('ANTERIOR')
  anterior,

  /// Uterus located towards the posterior region of the pelvis.
  @JsonValue('POSTERIOR')
  posterior,

  /// Uterus located in the central area of the pelvis.
  @JsonValue('CENTRAL')
  central,

  /// Uterus displaced towards one of the lateral regions of the pelvis.
  @JsonValue('LATERAL')
  lateral;

  @override
  String toString() => _$UterusLocalizationEnumMap[this] ?? 'UNKNOWN';
}

/// Describes the axis and usual position of the uterus within the pelvis.
enum UterusPosition {
  /// Unknown or unspecified value.
  @JsonValue('DESCONOCIDO')
  unknow,

  /// Anteverted uterus; common physiological position.
  @JsonValue('ANTEVERTIDO')
  anteverted,

  /// Retroverted uterus; may be associated with pelvic symptoms or infertility.
  @JsonValue('RETROVERTIDO')
  retroverted,

  /// Uterus in a neutral position, neither anteverted nor retroverted.
  @JsonValue('POSICIÓN MEDIA')
  midposition;

  @override
  String toString() => _$UterusPositionEnumMap[this] ?? 'UNKNOWN';
}

/// Describes the appearance of the uterine surface during ultrasound evaluation.
enum UterusSurface {
  /// Unknown or unspecified value.
  @JsonValue('DESCONOCIDO')
  unknow,

  /// Smooth and regular uterine surface, without pathological protrusions.
  @JsonValue('REGULAR')
  regular,

  /// Irregular uterine surface, suggestive of subserosal fibroids or other abnormalities.
  @JsonValue('IRREGULAR')
  irregular;

  @override
  String toString() => _$UterusSurfaceEnumMap[this] ?? 'UNKNOWN';
}

/// Characterizes the ultrasound pattern of the myometrium, useful in uterine pathology.
enum MyometriumType {
  /// Unknown or unspecified value.
  @JsonValue('DESCONOCIDO')
  unknow,

  /// Homogeneous appearance, without evident lesions.
  @JsonValue('HOMOGÉNEO')
  homogeneous,

  /// Heterogeneous myometrial echotexture, common in benign pathology.
  @JsonValue('HETEROGÉNEO')
  heterogeneous,

  /// Suspicion or presence of adenomyosis (zonal thickening or cystic lesions).
  @JsonValue('ADENOMIOSIS')
  adenomyosis,

  /// Presence of leiomyomas (uterine fibroids), benign and common.
  @JsonValue('LEIOMIOMA')
  leiomyoma,

  /// Other non-specific myometrial alteration.
  @JsonValue('OTRO')
  other;

  @override
  String toString() => _$MyometriumTypeEnumMap[this] ?? 'UNKNOWN';
}

/// Describes the appearance of the endometrium in transvaginal or abdominal ultrasound.
enum EndometriumAspect {
  /// Unknown or unspecified value.
  @JsonValue('DESCONOCIDO')
  unknow,

  /// Thin endometrium, common in postmenopause or certain phases of the cycle.
  @JsonValue('DELGADO')
  thin,

  /// Thick or hypertrophic endometrium, possibly associated with hyperplasia or cancer.
  @JsonValue('ENGROSADO')
  thick,

  /// Regular/physiological appearance according to the normal uterine cycle.
  @JsonValue('REGULAR')
  regular,

  /// Irregular endometrium, suggesting functional or neoplastic pathology.
  @JsonValue('IRREGULAR')
  irregular,

  /// Cystic changes, typical of endometritis, postmenopause, or hormonal treatment.
  @JsonValue('QUÍSTICO')
  cystic,

  /// Presence of endometrial polyp.
  @JsonValue('PÓLIPO')
  polyp,

  /// Other non-specific endometrial appearance.
  @JsonValue('OTRO')
  other;

  @override
  String toString() => _$EndometriumAspectEnumMap[this] ?? 'UNKNOWN';
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
    @JsonKey(unknownEnumValue: UterusLocalization.unknow)
    @Default(UterusLocalization.unknow)
    UterusLocalization localization,

    /// Physiological or pathological position of the uterus.
    @JsonKey(unknownEnumValue: UterusPosition.unknow)
    @Default(UterusPosition.unknow)
    UterusPosition position,

    /// Appearance of the uterine surface on ultrasound.
    @JsonKey(unknownEnumValue: UterusSurface.unknow)
    @Default(UterusSurface.unknow)
    UterusSurface surface,

    /// Type or ultrasound pattern of the observed myometrium.
    @JsonKey(unknownEnumValue: MyometriumType.unknow)
    @Default(MyometriumType.unknow)
    MyometriumType myometrium,

    /// Appearance of the endometrium detected in the study.
    @JsonKey(unknownEnumValue: EndometriumAspect.unknow)
    @Default(EndometriumAspect.unknow)
    EndometriumAspect endometrium,
  }) = _UterineFindings;

  /// Constructor from a JSON structure for uterine findings.
  factory UterineFindings.fromJson(Map<String, dynamic> json) =>
      _$UterineFindingsFromJson(json);
}
