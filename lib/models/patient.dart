part of 'models.dart';

/// Patient demographic and clinical identity model.
@unfreezed
abstract class Patient with _$Patient {
  /// Unique identifier for the patient (UUID format).
  /// Patient's full name, including surname(s).
  /// National identification document or passport (optional).
  /// Age of the patient in years (optional).
  /// Blood group (e.g., "O+") if available (optional).
  /// Date corresponding to the last menstrual period (optional).
  /// Number of times the patient has been pregnant (optional).
  /// Number of times the patient has given birth (optional).
  /// Number of cesarean deliveries (optional).
  /// Number of recorded abortions or miscarriages (optional).
  /// Referral source or referring medical provider (optional).
  /// Main reason for the medical visit or exam (optional).
  factory Patient({
    required String id,
    required String name,
    String? ci,
    int? age,
    String? bloodGroup,
    DateTime? fur,
    String? gesta,
    String? para,
    String? cesarea,
    String? aborto,
    String? referencia,
    String? motivo,
  }) = _Patient;

  /// Creates Patient from JSON.
  factory Patient.fromJson(Map<String, dynamic> json) =>
      _$PatientFromJson(json);
}
