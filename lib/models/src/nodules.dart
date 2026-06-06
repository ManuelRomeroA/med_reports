part of '../models.dart';

/// Ubicación anatómica posible para un nódulo.
/// Incluye opción 'desconocido' para valores no mapeados/serializados.
@JsonEnum(alwaysCreate: true)
enum NoduleLocation {
  /// Valor desconocido/por defecto
  @JsonValue('DESCONOCIDO')
  unknown,

  /// Fondo uterino
  @JsonValue('FONDO')
  fondo,

  /// Pared anterior
  @JsonValue('PARED ANTERIOR')
  paredAnterior,

  /// Pared posterior
  @JsonValue('PARED POSTERIOR')
  paredPosterior,

  /// Lateral
  @JsonValue('LATERAL')
  lateral,

  /// Otros
  @JsonValue('OTROS')
  otros;

  @override
  String toString() => _$NoduleLocationEnumMap[this] ?? 'DESCONOCIDO';
}

/// Represents the presence and details of nodules in the myometrium.
/// [has]: Indicates whether nodules are present.
/// [detail]: Contains detailed information about the nodule if present.
@unfreezed
abstract class Nodules with _$Nodules {
  factory Nodules({
    /// Whether the patient has nodules in the myometrium.
    @Default(false) bool hasNodules,
    /// Detailed measurements and location of the nodule, if present.
    NoduleDetail? detail,
  }) = _Nodules;
  factory Nodules.fromJson(Map<String, dynamic> json) =>
      _$NodulesFromJson(json);
}

/// Detailed information about a single nodule in the myometrium.
/// Contains location, dimensions (L, AP, T), and descriptive notes.
@unfreezed
abstract class NoduleDetail with _$NoduleDetail {
  factory NoduleDetail({
    @Default(NoduleLocation.unknown)
    NoduleLocation location,
    @Default(0.0) double longitud,
    @Default(0.0) double ap,
    @Default(0.0) double t,
    String? description,
  }) = _NoduleDetail;
  factory NoduleDetail.fromJson(Map<String, dynamic> json) =>
      _$NoduleDetailFromJson(json);
}
