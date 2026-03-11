part of 'models.dart';

/// Patient data model.
///
/// Represents the patient's basic identification and obstetric history.
@unfreezed
abstract class Patient with _$Patient {
  /// Creates a new mutable [Patient]. This model is edited while the
  /// document is being filled.
  factory Patient({
    /// [id] Unique identifier (UUID) for the patient.
    required String id,

    /// [name] Full name of the patient.
    required String name,

    /// [ci] National ID or document number (legacy JSON key `ci`).
    String? ci,

    /// [age] Age in years.
    int? age,

    /// [bloodGroup] Blood group (e.g. "O+", "A-").
    String? bloodGroup,

    /// [fur] Date of last menstrual period (LMP). Stored in legacy JSON as `fur`.
    DateTime? fur,

    /// [gesta] Gravida (number of pregnancies).
    String? gesta,

    /// [para] Para (number of births).
    String? para,

    /// [cesarea] Cesarean count.
    String? cesarea,

    /// [aborto] Abortion count.
    String? aborto,

    /// [referencia] Referral source.
    String? referencia,

    /// [motivo] Chief complaint or reason for consultation.
    String? motivo,
  }) = _Patient;

  /// Creates a [Patient] instance from a JSON map.
  factory Patient.fromJson(Map<String, dynamic> json) =>
      _$PatientFromJson(json);
}
