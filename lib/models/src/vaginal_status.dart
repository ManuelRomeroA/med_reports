part of '../models.dart';

/// Model representing the vaginal status of a patient, including menstrual history and obstetric information.
@unfreezed
abstract class VaginalStatus with _$VaginalStatus {
  /// Main reason for the medical visit or exam (optional).
  factory VaginalStatus({
    /// [status] represents the current vaginal status of the patient
    @JsonKey(unknownEnumValue: StateValue.unknown)
    @Default(StateValue.normal)
    StateValue status,

    /// [note] in case [status] is not normal, this field can be used to provide additional details or observations about the vaginal status.
    String? note,
  }) = _VaginalStatus;

  /// Creates VaginalStatus from JSON.
  factory VaginalStatus.fromJson(Map<String, dynamic> json) =>
      _$VaginalStatusFromJson(json);
}
