part of 'models.dart';

/// Represents presence of focal nodules or masses.
///
/// `has` indicates whether nodules are present; `description` contains a
/// concise morphological description (size, echogenicity, location).
@unfreezed
abstract class Nodules with _$Nodules {
  /// Mutable model for nodules presence/description while editing.
  factory Nodules({required bool has, String? description}) = _Nodules;

  /// Deserializes [Nodules] from JSON.
  factory Nodules.fromJson(Map<String, dynamic> json) =>
      _$NodulesFromJson(json);
}
