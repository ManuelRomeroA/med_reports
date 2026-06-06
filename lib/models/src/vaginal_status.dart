part of '../models.dart';

/// Model representing the vaginal status of a patient.
/// Contains the current vaginal state (normal, other, or unknown) and optional descriptive notes.
/// [status]: Current state of the vagina during examination.
/// [note]: Additional descriptive notes if status is not normal.
///
/// Implements [StateModel] to work with the generic StateSelector widget.
@unfreezed
abstract class VaginalStatus with _$VaginalStatus {
  /// Default factory constructor for vaginal status.
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
