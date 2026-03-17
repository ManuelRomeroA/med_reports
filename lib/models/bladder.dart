part of 'models.dart';

/// Represents bladder and Douglas pouch findings in an imaging report.
enum Regularity {
  /// [regular]: Bladder wall is smooth and uniform.
  regular,

  /// [irregular]: Focal or diffuse irregularities detected in the bladder wall.
  irregular,
}

enum DouglasPouch {
  /// [free]: Pouch of Douglas free, no pathological content.
  @JsonValue('libre')
  free,

  /// [occupied]: Pathological occupation (fluid, tissue, mass).
  @JsonValue('ocupado')
  occupied,
}

enum BladderDiagnosis {
  /// [normal]: Normal findings.
  normal,

  /// [medio]: Intermediate severity diagnosis.
  medio,

  /// [alto]: Severe or advanced abnormalities.
  alto,

  /// [otro]: Other diagnosis not covered.
  otro,
}

enum OvaryDiagnosis {
  /// [normales]: Normal ovarian findings.
  normales,

  /// [poliquisticos]: Polycystic ovary findings.
  poliquisticos,

  /// [otros]: Other or ambiguous findings.
  otros,
}

/// Bladder data model for imaging reports.
/// Stores wall regularity, Douglas pouch status, wall thickness, and diagnosis fields.
@unfreezed
abstract class Bladder with _$Bladder {
  /// Estado de la pared vesical.
  /// Espesor de la pared vesical en milímetros (opcional).
  /// Estado del fondo de saco de Douglas.
  /// Diagnóstico vesical (opcional).
  /// Diagnóstico ovárico en contexto vesical (opcional).
  /// Conclusión o comentario libre del estudio (opcional).
  factory Bladder({
    /// State of bladder wall regularity.
    required Regularity regularity,

    /// Measured bladder wall thickness in millimeters (optional).
    double? wallMm,

    /// Status of Douglas pouch (free or occupied).
    required DouglasPouch douglasPouch,

    /// Diagnosis related to the bladder, if any (optional).
    BladderDiagnosis? diagnosis,

    /// Ovary diagnosis contextually relevant to the bladder (optional).
    OvaryDiagnosis? ovaryDiagnosis,

    /// Free-text conclusion or imaging comment (optional).
    String? conclusion,
  }) = _Bladder;

  /// Creates a Bladder object from a JSON map.
  factory Bladder.fromJson(Map<String, dynamic> json) =>
      _$BladderFromJson(json);
}
