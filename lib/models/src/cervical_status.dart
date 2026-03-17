part of '../models.dart';

/// Model representing the cervical status of a patient, including menstrual history and obstetric information.
@unfreezed
abstract class CervicalStatus with _$CervicalStatus {
  /// Main reason for the medical visit or exam (optional).
  factory CervicalStatus({
    /// [status] represents the current cervical status of the patient
    @JsonKey(unknownEnumValue: StateValue.unknown)
    @Default(StateValue.normal)
    StateValue status,

    /// [note] in case [status] is not normal, this field can be used to provide additional details or observations about the cervical status.
    String? note,
  }) = _CervicalStatus;

  /// Creates CervicalStatus from JSON.
  factory CervicalStatus.fromJson(Map<String, dynamic> json) =>
      _$CervicalStatusFromJson(json);
}
