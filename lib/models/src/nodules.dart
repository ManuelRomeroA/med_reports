part of '../models.dart';

/// Ubicación anatómica posible para un nódulo.
/// Incluye opción 'desconocido' para valores no mapeados/serializados.
@JsonEnum()
enum NoduleLocation {
  /// Valor desconocido/por defecto
  @JsonValue('DESCONOCIDO')
  unknown,

  /// Fondo
  @JsonValue('FONDO')
  background,

  /// Pared anterior
  @JsonValue('PARED ANTERIOR')
  anteriorWall,

  /// Pared posterior
  @JsonValue('PARED POSTERIOR')
  posteriorWall,

  /// Lateral
  @JsonValue('LATERAL')
  lateral,

  /// Otros
  @JsonValue('OTROS')
  others,
}

@unfreezed
abstract class Nodules with _$Nodules {
  factory Nodules({@Default(false) bool has, NoduleDetail? detail}) = _Nodules;
  factory Nodules.fromJson(Map<String, dynamic> json) =>
      _$NodulesFromJson(json);
}

@unfreezed
abstract class NoduleDetail with _$NoduleDetail {
  factory NoduleDetail({
    @Default(NoduleLocation.unknown)
    @JsonKey(defaultValue: NoduleLocation.unknown)
    NoduleLocation location,
    @Default(0.0) double longitud,
    @Default(0.0) double ap,
    @Default(0.0) double t,
    String? description,
  }) = _NoduleDetail;
  factory NoduleDetail.fromJson(Map<String, dynamic> json) =>
      _$NoduleDetailFromJson(json);
}
