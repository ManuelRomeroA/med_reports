part of 'models.dart';

/// Documents presence or description of focal nodules in imaging.
@unfreezed
abstract class Nodules with _$Nodules {
  factory Nodules({
    /// Indicates if nodules are present (true) or absent (false).
    required bool has,

    /// Optional morphological description of nodules, if present.
    String? description,
  }) = _Nodules;

  /// Creates Nodules from JSON map.
  factory Nodules.fromJson(Map<String, dynamic> json) =>
      _$NodulesFromJson(json);
}
