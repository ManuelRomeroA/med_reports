part of 'models.dart';

@unfreezed
abstract class Patient with _$Patient {
  /// Main reason for the medical visit or exam (optional).
  factory Patient({
    /// Unique identifier for the patient (UUID format).
    String? id,

    /// Patient's full name, including surname(s).
    String? name,

    /// National identification document or passport (optional).
    String? ci,

    /// Age of the patient in years (optional).
    int? age,

    /// Blood group (e.g., "O+") if available (optional).
    @JsonKey(unknownEnumValue: BloodType.unknow)
    @Default(BloodType.unknow)
    BloodType bloodType,

    /// Date corresponding to the last menstrual period (optional).
    DateTime? fur,

    /// Number of times the patient has been pregnant (optional).
    String? gesta,

    /// Number of times the patient has given birth (optional).
    String? para,

    /// Number of cesarean deliveries (optional).
    String? cesarea,

    /// Number of recorded abortions or miscarriages (optional).
    String? aborto,

    /// Period
    @JsonKey(unknownEnumValue: PeriodType.normal)
    @Default(PeriodType.normal)
    PeriodType period,

    /// Referral source or referring medical provider (optional).
    String? reference,

    /// Patient demographic and clinical identity model.
    String? motivo,
  }) = _Patient;

  /// Creates Patient from JSON.
  factory Patient.fromJson(Map<String, dynamic> json) =>
      _$PatientFromJson(json);
}

enum PeriodType {
  @JsonValue('REGULAR')
  regular,
  @JsonValue('EXCESIVA')
  excesiva,
  @JsonValue('NORMAL')
  normal,
  @JsonValue('ESCASA')
  escasa,
  @JsonValue('DESCONOCIDA')
  unknow;

  @override
  String toString() => _$PeriodTypeEnumMap[this] ?? 'DESCONOCIDO';
}

enum BloodType {
  @JsonValue("A+")
  ap,
  @JsonValue("A-")
  an,
  @JsonValue("B+")
  bp,
  @JsonValue("B-")
  bn,
  @JsonValue("AB+")
  abp,
  @JsonValue("AB-")
  abn,
  @JsonValue("O+")
  op,
  @JsonValue("O-")
  on,
  @JsonValue("DESCONOCIDO")
  unknow;

  @override
  String toString() => _$BloodTypeEnumMap[this] ?? 'DESCONOCIDO';
}
