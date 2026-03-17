// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Patient {

/// Unique identifier for the patient (UUID format).
 String? get id;/// Unique identifier for the patient (UUID format).
 set id(String? value);/// Patient's full name, including surname(s).
 String? get name;/// Patient's full name, including surname(s).
 set name(String? value);/// National identification document or passport (optional).
 String? get ci;/// National identification document or passport (optional).
 set ci(String? value);/// Age of the patient in years (optional).
 int? get age;/// Age of the patient in years (optional).
 set age(int? value);/// Blood group (e.g., "O+") if available (optional).
@JsonKey(unknownEnumValue: BloodType.unknow) BloodType get bloodType;/// Blood group (e.g., "O+") if available (optional).
@JsonKey(unknownEnumValue: BloodType.unknow) set bloodType(BloodType value);/// Date corresponding to the last menstrual period (optional).
 DateTime? get fur;/// Date corresponding to the last menstrual period (optional).
 set fur(DateTime? value);/// Number of times the patient has been pregnant (optional).
 String? get gesta;/// Number of times the patient has been pregnant (optional).
 set gesta(String? value);/// Number of times the patient has given birth (optional).
 String? get para;/// Number of times the patient has given birth (optional).
 set para(String? value);/// Number of cesarean deliveries (optional).
 String? get cesarea;/// Number of cesarean deliveries (optional).
 set cesarea(String? value);/// Number of recorded abortions or miscarriages (optional).
 String? get aborto;/// Number of recorded abortions or miscarriages (optional).
 set aborto(String? value);/// Period
@JsonKey(unknownEnumValue: PeriodType.normal) PeriodType get period;/// Period
@JsonKey(unknownEnumValue: PeriodType.normal) set period(PeriodType value);/// Referral source or referring medical provider (optional).
 String? get reference;/// Referral source or referring medical provider (optional).
 set reference(String? value);/// Motivo principal para la consulta o la realización del examen (opcional).
 String? get motivo;/// Motivo principal para la consulta o la realización del examen (opcional).
 set motivo(String? value);
/// Create a copy of Patient
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatientCopyWith<Patient> get copyWith => _$PatientCopyWithImpl<Patient>(this as Patient, _$identity);

  /// Serializes this Patient to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'Patient(id: $id, name: $name, ci: $ci, age: $age, bloodType: $bloodType, fur: $fur, gesta: $gesta, para: $para, cesarea: $cesarea, aborto: $aborto, period: $period, reference: $reference, motivo: $motivo)';
}


}

/// @nodoc
abstract mixin class $PatientCopyWith<$Res>  {
  factory $PatientCopyWith(Patient value, $Res Function(Patient) _then) = _$PatientCopyWithImpl;
@useResult
$Res call({
 String? id, String? name, String? ci, int? age,@JsonKey(unknownEnumValue: BloodType.unknow) BloodType bloodType, DateTime? fur, String? gesta, String? para, String? cesarea, String? aborto,@JsonKey(unknownEnumValue: PeriodType.normal) PeriodType period, String? reference, String? motivo
});




}
/// @nodoc
class _$PatientCopyWithImpl<$Res>
    implements $PatientCopyWith<$Res> {
  _$PatientCopyWithImpl(this._self, this._then);

  final Patient _self;
  final $Res Function(Patient) _then;

/// Create a copy of Patient
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? ci = freezed,Object? age = freezed,Object? bloodType = null,Object? fur = freezed,Object? gesta = freezed,Object? para = freezed,Object? cesarea = freezed,Object? aborto = freezed,Object? period = null,Object? reference = freezed,Object? motivo = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,ci: freezed == ci ? _self.ci : ci // ignore: cast_nullable_to_non_nullable
as String?,age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int?,bloodType: null == bloodType ? _self.bloodType : bloodType // ignore: cast_nullable_to_non_nullable
as BloodType,fur: freezed == fur ? _self.fur : fur // ignore: cast_nullable_to_non_nullable
as DateTime?,gesta: freezed == gesta ? _self.gesta : gesta // ignore: cast_nullable_to_non_nullable
as String?,para: freezed == para ? _self.para : para // ignore: cast_nullable_to_non_nullable
as String?,cesarea: freezed == cesarea ? _self.cesarea : cesarea // ignore: cast_nullable_to_non_nullable
as String?,aborto: freezed == aborto ? _self.aborto : aborto // ignore: cast_nullable_to_non_nullable
as String?,period: null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as PeriodType,reference: freezed == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String?,motivo: freezed == motivo ? _self.motivo : motivo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Patient].
extension PatientPatterns on Patient {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Patient value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Patient() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Patient value)  $default,){
final _that = this;
switch (_that) {
case _Patient():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Patient value)?  $default,){
final _that = this;
switch (_that) {
case _Patient() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? name,  String? ci,  int? age, @JsonKey(unknownEnumValue: BloodType.unknow)  BloodType bloodType,  DateTime? fur,  String? gesta,  String? para,  String? cesarea,  String? aborto, @JsonKey(unknownEnumValue: PeriodType.normal)  PeriodType period,  String? reference,  String? motivo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Patient() when $default != null:
return $default(_that.id,_that.name,_that.ci,_that.age,_that.bloodType,_that.fur,_that.gesta,_that.para,_that.cesarea,_that.aborto,_that.period,_that.reference,_that.motivo);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? name,  String? ci,  int? age, @JsonKey(unknownEnumValue: BloodType.unknow)  BloodType bloodType,  DateTime? fur,  String? gesta,  String? para,  String? cesarea,  String? aborto, @JsonKey(unknownEnumValue: PeriodType.normal)  PeriodType period,  String? reference,  String? motivo)  $default,) {final _that = this;
switch (_that) {
case _Patient():
return $default(_that.id,_that.name,_that.ci,_that.age,_that.bloodType,_that.fur,_that.gesta,_that.para,_that.cesarea,_that.aborto,_that.period,_that.reference,_that.motivo);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? name,  String? ci,  int? age, @JsonKey(unknownEnumValue: BloodType.unknow)  BloodType bloodType,  DateTime? fur,  String? gesta,  String? para,  String? cesarea,  String? aborto, @JsonKey(unknownEnumValue: PeriodType.normal)  PeriodType period,  String? reference,  String? motivo)?  $default,) {final _that = this;
switch (_that) {
case _Patient() when $default != null:
return $default(_that.id,_that.name,_that.ci,_that.age,_that.bloodType,_that.fur,_that.gesta,_that.para,_that.cesarea,_that.aborto,_that.period,_that.reference,_that.motivo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Patient implements Patient {
   _Patient({this.id, this.name, this.ci, this.age, @JsonKey(unknownEnumValue: BloodType.unknow) this.bloodType = BloodType.unknow, this.fur, this.gesta, this.para, this.cesarea, this.aborto, @JsonKey(unknownEnumValue: PeriodType.normal) this.period = PeriodType.normal, this.reference, this.motivo});
  factory _Patient.fromJson(Map<String, dynamic> json) => _$PatientFromJson(json);

/// Unique identifier for the patient (UUID format).
@override  String? id;
/// Patient's full name, including surname(s).
@override  String? name;
/// National identification document or passport (optional).
@override  String? ci;
/// Age of the patient in years (optional).
@override  int? age;
/// Blood group (e.g., "O+") if available (optional).
@override@JsonKey(unknownEnumValue: BloodType.unknow)  BloodType bloodType;
/// Date corresponding to the last menstrual period (optional).
@override  DateTime? fur;
/// Number of times the patient has been pregnant (optional).
@override  String? gesta;
/// Number of times the patient has given birth (optional).
@override  String? para;
/// Number of cesarean deliveries (optional).
@override  String? cesarea;
/// Number of recorded abortions or miscarriages (optional).
@override  String? aborto;
/// Period
@override@JsonKey(unknownEnumValue: PeriodType.normal)  PeriodType period;
/// Referral source or referring medical provider (optional).
@override  String? reference;
/// Motivo principal para la consulta o la realización del examen (opcional).
@override  String? motivo;

/// Create a copy of Patient
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatientCopyWith<_Patient> get copyWith => __$PatientCopyWithImpl<_Patient>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PatientToJson(this, );
}



@override
String toString() {
  return 'Patient(id: $id, name: $name, ci: $ci, age: $age, bloodType: $bloodType, fur: $fur, gesta: $gesta, para: $para, cesarea: $cesarea, aborto: $aborto, period: $period, reference: $reference, motivo: $motivo)';
}


}

/// @nodoc
abstract mixin class _$PatientCopyWith<$Res> implements $PatientCopyWith<$Res> {
  factory _$PatientCopyWith(_Patient value, $Res Function(_Patient) _then) = __$PatientCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? name, String? ci, int? age,@JsonKey(unknownEnumValue: BloodType.unknow) BloodType bloodType, DateTime? fur, String? gesta, String? para, String? cesarea, String? aborto,@JsonKey(unknownEnumValue: PeriodType.normal) PeriodType period, String? reference, String? motivo
});




}
/// @nodoc
class __$PatientCopyWithImpl<$Res>
    implements _$PatientCopyWith<$Res> {
  __$PatientCopyWithImpl(this._self, this._then);

  final _Patient _self;
  final $Res Function(_Patient) _then;

/// Create a copy of Patient
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? ci = freezed,Object? age = freezed,Object? bloodType = null,Object? fur = freezed,Object? gesta = freezed,Object? para = freezed,Object? cesarea = freezed,Object? aborto = freezed,Object? period = null,Object? reference = freezed,Object? motivo = freezed,}) {
  return _then(_Patient(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,ci: freezed == ci ? _self.ci : ci // ignore: cast_nullable_to_non_nullable
as String?,age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int?,bloodType: null == bloodType ? _self.bloodType : bloodType // ignore: cast_nullable_to_non_nullable
as BloodType,fur: freezed == fur ? _self.fur : fur // ignore: cast_nullable_to_non_nullable
as DateTime?,gesta: freezed == gesta ? _self.gesta : gesta // ignore: cast_nullable_to_non_nullable
as String?,para: freezed == para ? _self.para : para // ignore: cast_nullable_to_non_nullable
as String?,cesarea: freezed == cesarea ? _self.cesarea : cesarea // ignore: cast_nullable_to_non_nullable
as String?,aborto: freezed == aborto ? _self.aborto : aborto // ignore: cast_nullable_to_non_nullable
as String?,period: null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as PeriodType,reference: freezed == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String?,motivo: freezed == motivo ? _self.motivo : motivo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$StudyProtocol {

/// Specifies the type of ultrasound study protocol.
@JsonKey(unknownEnumValue: StudyType.unknow) StudyType get type;/// Specifies the type of ultrasound study protocol.
@JsonKey(unknownEnumValue: StudyType.unknow) set type(StudyType value);/// Model or description of the equipment used, if available.
 String? get equipment;/// Model or description of the equipment used, if available.
 set equipment(String? value);
/// Create a copy of StudyProtocol
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudyProtocolCopyWith<StudyProtocol> get copyWith => _$StudyProtocolCopyWithImpl<StudyProtocol>(this as StudyProtocol, _$identity);

  /// Serializes this StudyProtocol to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'StudyProtocol(type: $type, equipment: $equipment)';
}


}

/// @nodoc
abstract mixin class $StudyProtocolCopyWith<$Res>  {
  factory $StudyProtocolCopyWith(StudyProtocol value, $Res Function(StudyProtocol) _then) = _$StudyProtocolCopyWithImpl;
@useResult
$Res call({
@JsonKey(unknownEnumValue: StudyType.unknow) StudyType type, String? equipment
});




}
/// @nodoc
class _$StudyProtocolCopyWithImpl<$Res>
    implements $StudyProtocolCopyWith<$Res> {
  _$StudyProtocolCopyWithImpl(this._self, this._then);

  final StudyProtocol _self;
  final $Res Function(StudyProtocol) _then;

/// Create a copy of StudyProtocol
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? equipment = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as StudyType,equipment: freezed == equipment ? _self.equipment : equipment // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [StudyProtocol].
extension StudyProtocolPatterns on StudyProtocol {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StudyProtocol value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StudyProtocol() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StudyProtocol value)  $default,){
final _that = this;
switch (_that) {
case _StudyProtocol():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StudyProtocol value)?  $default,){
final _that = this;
switch (_that) {
case _StudyProtocol() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(unknownEnumValue: StudyType.unknow)  StudyType type,  String? equipment)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StudyProtocol() when $default != null:
return $default(_that.type,_that.equipment);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(unknownEnumValue: StudyType.unknow)  StudyType type,  String? equipment)  $default,) {final _that = this;
switch (_that) {
case _StudyProtocol():
return $default(_that.type,_that.equipment);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(unknownEnumValue: StudyType.unknow)  StudyType type,  String? equipment)?  $default,) {final _that = this;
switch (_that) {
case _StudyProtocol() when $default != null:
return $default(_that.type,_that.equipment);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StudyProtocol implements StudyProtocol {
   _StudyProtocol({@JsonKey(unknownEnumValue: StudyType.unknow) this.type = StudyType.unknow, this.equipment});
  factory _StudyProtocol.fromJson(Map<String, dynamic> json) => _$StudyProtocolFromJson(json);

/// Specifies the type of ultrasound study protocol.
@override@JsonKey(unknownEnumValue: StudyType.unknow)  StudyType type;
/// Model or description of the equipment used, if available.
@override  String? equipment;

/// Create a copy of StudyProtocol
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudyProtocolCopyWith<_StudyProtocol> get copyWith => __$StudyProtocolCopyWithImpl<_StudyProtocol>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StudyProtocolToJson(this, );
}



@override
String toString() {
  return 'StudyProtocol(type: $type, equipment: $equipment)';
}


}

/// @nodoc
abstract mixin class _$StudyProtocolCopyWith<$Res> implements $StudyProtocolCopyWith<$Res> {
  factory _$StudyProtocolCopyWith(_StudyProtocol value, $Res Function(_StudyProtocol) _then) = __$StudyProtocolCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(unknownEnumValue: StudyType.unknow) StudyType type, String? equipment
});




}
/// @nodoc
class __$StudyProtocolCopyWithImpl<$Res>
    implements _$StudyProtocolCopyWith<$Res> {
  __$StudyProtocolCopyWithImpl(this._self, this._then);

  final _StudyProtocol _self;
  final $Res Function(_StudyProtocol) _then;

/// Create a copy of StudyProtocol
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? equipment = freezed,}) {
  return _then(_StudyProtocol(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as StudyType,equipment: freezed == equipment ? _self.equipment : equipment // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$OvaryMeasurement {

/// Diámetro antero-posterior del ovario en mm.
 double? get ap;/// Diámetro antero-posterior del ovario en mm.
 set ap(double? value);/// Diámetro transversal del ovario en mm.
 double? get tr;/// Diámetro transversal del ovario en mm.
 set tr(double? value);/// Diámetro longitudinal del ovario en mm.
 double? get lo;/// Diámetro longitudinal del ovario en mm.
 set lo(double? value);/// Volumen ovárico calculado en mm³ (opcional).
 double? get volume;/// Volumen ovárico calculado en mm³ (opcional).
 set volume(double? value);
/// Create a copy of OvaryMeasurement
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OvaryMeasurementCopyWith<OvaryMeasurement> get copyWith => _$OvaryMeasurementCopyWithImpl<OvaryMeasurement>(this as OvaryMeasurement, _$identity);

  /// Serializes this OvaryMeasurement to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'OvaryMeasurement(ap: $ap, tr: $tr, lo: $lo, volume: $volume)';
}


}

/// @nodoc
abstract mixin class $OvaryMeasurementCopyWith<$Res>  {
  factory $OvaryMeasurementCopyWith(OvaryMeasurement value, $Res Function(OvaryMeasurement) _then) = _$OvaryMeasurementCopyWithImpl;
@useResult
$Res call({
 double? ap, double? tr, double? lo, double? volume
});




}
/// @nodoc
class _$OvaryMeasurementCopyWithImpl<$Res>
    implements $OvaryMeasurementCopyWith<$Res> {
  _$OvaryMeasurementCopyWithImpl(this._self, this._then);

  final OvaryMeasurement _self;
  final $Res Function(OvaryMeasurement) _then;

/// Create a copy of OvaryMeasurement
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ap = freezed,Object? tr = freezed,Object? lo = freezed,Object? volume = freezed,}) {
  return _then(_self.copyWith(
ap: freezed == ap ? _self.ap : ap // ignore: cast_nullable_to_non_nullable
as double?,tr: freezed == tr ? _self.tr : tr // ignore: cast_nullable_to_non_nullable
as double?,lo: freezed == lo ? _self.lo : lo // ignore: cast_nullable_to_non_nullable
as double?,volume: freezed == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [OvaryMeasurement].
extension OvaryMeasurementPatterns on OvaryMeasurement {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OvaryMeasurement value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OvaryMeasurement() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OvaryMeasurement value)  $default,){
final _that = this;
switch (_that) {
case _OvaryMeasurement():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OvaryMeasurement value)?  $default,){
final _that = this;
switch (_that) {
case _OvaryMeasurement() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? ap,  double? tr,  double? lo,  double? volume)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OvaryMeasurement() when $default != null:
return $default(_that.ap,_that.tr,_that.lo,_that.volume);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? ap,  double? tr,  double? lo,  double? volume)  $default,) {final _that = this;
switch (_that) {
case _OvaryMeasurement():
return $default(_that.ap,_that.tr,_that.lo,_that.volume);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? ap,  double? tr,  double? lo,  double? volume)?  $default,) {final _that = this;
switch (_that) {
case _OvaryMeasurement() when $default != null:
return $default(_that.ap,_that.tr,_that.lo,_that.volume);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OvaryMeasurement implements OvaryMeasurement {
   _OvaryMeasurement({this.ap, this.tr, this.lo, this.volume});
  factory _OvaryMeasurement.fromJson(Map<String, dynamic> json) => _$OvaryMeasurementFromJson(json);

/// Diámetro antero-posterior del ovario en mm.
@override  double? ap;
/// Diámetro transversal del ovario en mm.
@override  double? tr;
/// Diámetro longitudinal del ovario en mm.
@override  double? lo;
/// Volumen ovárico calculado en mm³ (opcional).
@override  double? volume;

/// Create a copy of OvaryMeasurement
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OvaryMeasurementCopyWith<_OvaryMeasurement> get copyWith => __$OvaryMeasurementCopyWithImpl<_OvaryMeasurement>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OvaryMeasurementToJson(this, );
}



@override
String toString() {
  return 'OvaryMeasurement(ap: $ap, tr: $tr, lo: $lo, volume: $volume)';
}


}

/// @nodoc
abstract mixin class _$OvaryMeasurementCopyWith<$Res> implements $OvaryMeasurementCopyWith<$Res> {
  factory _$OvaryMeasurementCopyWith(_OvaryMeasurement value, $Res Function(_OvaryMeasurement) _then) = __$OvaryMeasurementCopyWithImpl;
@override @useResult
$Res call({
 double? ap, double? tr, double? lo, double? volume
});




}
/// @nodoc
class __$OvaryMeasurementCopyWithImpl<$Res>
    implements _$OvaryMeasurementCopyWith<$Res> {
  __$OvaryMeasurementCopyWithImpl(this._self, this._then);

  final _OvaryMeasurement _self;
  final $Res Function(_OvaryMeasurement) _then;

/// Create a copy of OvaryMeasurement
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ap = freezed,Object? tr = freezed,Object? lo = freezed,Object? volume = freezed,}) {
  return _then(_OvaryMeasurement(
ap: freezed == ap ? _self.ap : ap // ignore: cast_nullable_to_non_nullable
as double?,tr: freezed == tr ? _self.tr : tr // ignore: cast_nullable_to_non_nullable
as double?,lo: freezed == lo ? _self.lo : lo // ignore: cast_nullable_to_non_nullable
as double?,volume: freezed == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$Ovary {

/// Lateralidad del ovario (derecha, izquierda, desconocido)
@JsonKey(unknownEnumValue: OvarySide.unknown) OvarySide get side;/// Lateralidad del ovario (derecha, izquierda, desconocido)
@JsonKey(unknownEnumValue: OvarySide.unknown) set side(OvarySide value);/// Tipo morfológico del ovario (normal, poliquístico, otro, desconocido)
@JsonKey(unknownEnumValue: OvaryType.unknown) OvaryType get type;/// Tipo morfológico del ovario (normal, poliquístico, otro, desconocido)
@JsonKey(unknownEnumValue: OvaryType.unknown) set type(OvaryType value);/// Medición diametral ovárica (AP, TR, LO)
 OvaryMeasurement get measures;/// Medición diametral ovárica (AP, TR, LO)
 set measures(OvaryMeasurement value);/// Notas adicionales sobre evaluación del ovario
 String? get notes;/// Notas adicionales sobre evaluación del ovario
 set notes(String? value);
/// Create a copy of Ovary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OvaryCopyWith<Ovary> get copyWith => _$OvaryCopyWithImpl<Ovary>(this as Ovary, _$identity);

  /// Serializes this Ovary to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'Ovary(side: $side, type: $type, measures: $measures, notes: $notes)';
}


}

/// @nodoc
abstract mixin class $OvaryCopyWith<$Res>  {
  factory $OvaryCopyWith(Ovary value, $Res Function(Ovary) _then) = _$OvaryCopyWithImpl;
@useResult
$Res call({
@JsonKey(unknownEnumValue: OvarySide.unknown) OvarySide side,@JsonKey(unknownEnumValue: OvaryType.unknown) OvaryType type, OvaryMeasurement measures, String? notes
});


$OvaryMeasurementCopyWith<$Res> get measures;

}
/// @nodoc
class _$OvaryCopyWithImpl<$Res>
    implements $OvaryCopyWith<$Res> {
  _$OvaryCopyWithImpl(this._self, this._then);

  final Ovary _self;
  final $Res Function(Ovary) _then;

/// Create a copy of Ovary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? side = null,Object? type = null,Object? measures = null,Object? notes = freezed,}) {
  return _then(_self.copyWith(
side: null == side ? _self.side : side // ignore: cast_nullable_to_non_nullable
as OvarySide,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as OvaryType,measures: null == measures ? _self.measures : measures // ignore: cast_nullable_to_non_nullable
as OvaryMeasurement,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Ovary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OvaryMeasurementCopyWith<$Res> get measures {
  
  return $OvaryMeasurementCopyWith<$Res>(_self.measures, (value) {
    return _then(_self.copyWith(measures: value));
  });
}
}


/// Adds pattern-matching-related methods to [Ovary].
extension OvaryPatterns on Ovary {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Ovary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Ovary() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Ovary value)  $default,){
final _that = this;
switch (_that) {
case _Ovary():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Ovary value)?  $default,){
final _that = this;
switch (_that) {
case _Ovary() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(unknownEnumValue: OvarySide.unknown)  OvarySide side, @JsonKey(unknownEnumValue: OvaryType.unknown)  OvaryType type,  OvaryMeasurement measures,  String? notes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Ovary() when $default != null:
return $default(_that.side,_that.type,_that.measures,_that.notes);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(unknownEnumValue: OvarySide.unknown)  OvarySide side, @JsonKey(unknownEnumValue: OvaryType.unknown)  OvaryType type,  OvaryMeasurement measures,  String? notes)  $default,) {final _that = this;
switch (_that) {
case _Ovary():
return $default(_that.side,_that.type,_that.measures,_that.notes);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(unknownEnumValue: OvarySide.unknown)  OvarySide side, @JsonKey(unknownEnumValue: OvaryType.unknown)  OvaryType type,  OvaryMeasurement measures,  String? notes)?  $default,) {final _that = this;
switch (_that) {
case _Ovary() when $default != null:
return $default(_that.side,_that.type,_that.measures,_that.notes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Ovary implements Ovary {
   _Ovary({@JsonKey(unknownEnumValue: OvarySide.unknown) this.side = OvarySide.left, @JsonKey(unknownEnumValue: OvaryType.unknown) this.type = OvaryType.normal, required this.measures, this.notes});
  factory _Ovary.fromJson(Map<String, dynamic> json) => _$OvaryFromJson(json);

/// Lateralidad del ovario (derecha, izquierda, desconocido)
@override@JsonKey(unknownEnumValue: OvarySide.unknown)  OvarySide side;
/// Tipo morfológico del ovario (normal, poliquístico, otro, desconocido)
@override@JsonKey(unknownEnumValue: OvaryType.unknown)  OvaryType type;
/// Medición diametral ovárica (AP, TR, LO)
@override  OvaryMeasurement measures;
/// Notas adicionales sobre evaluación del ovario
@override  String? notes;

/// Create a copy of Ovary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OvaryCopyWith<_Ovary> get copyWith => __$OvaryCopyWithImpl<_Ovary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OvaryToJson(this, );
}



@override
String toString() {
  return 'Ovary(side: $side, type: $type, measures: $measures, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$OvaryCopyWith<$Res> implements $OvaryCopyWith<$Res> {
  factory _$OvaryCopyWith(_Ovary value, $Res Function(_Ovary) _then) = __$OvaryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(unknownEnumValue: OvarySide.unknown) OvarySide side,@JsonKey(unknownEnumValue: OvaryType.unknown) OvaryType type, OvaryMeasurement measures, String? notes
});


@override $OvaryMeasurementCopyWith<$Res> get measures;

}
/// @nodoc
class __$OvaryCopyWithImpl<$Res>
    implements _$OvaryCopyWith<$Res> {
  __$OvaryCopyWithImpl(this._self, this._then);

  final _Ovary _self;
  final $Res Function(_Ovary) _then;

/// Create a copy of Ovary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? side = null,Object? type = null,Object? measures = null,Object? notes = freezed,}) {
  return _then(_Ovary(
side: null == side ? _self.side : side // ignore: cast_nullable_to_non_nullable
as OvarySide,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as OvaryType,measures: null == measures ? _self.measures : measures // ignore: cast_nullable_to_non_nullable
as OvaryMeasurement,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Ovary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OvaryMeasurementCopyWith<$Res> get measures {
  
  return $OvaryMeasurementCopyWith<$Res>(_self.measures, (value) {
    return _then(_self.copyWith(measures: value));
  });
}
}


/// @nodoc
mixin _$Bladder {

/// State of bladder wall regularity.
 Regularity get regularity;/// State of bladder wall regularity.
 set regularity(Regularity value);/// Measured bladder wall thickness in millimeters (optional).
 double? get wallMm;/// Measured bladder wall thickness in millimeters (optional).
 set wallMm(double? value);/// Status of Douglas pouch (free or occupied).
 DouglasPouch get douglasPouch;/// Status of Douglas pouch (free or occupied).
 set douglasPouch(DouglasPouch value);/// Diagnosis related to the bladder, if any (optional).
 BladderDiagnosis? get diagnosis;/// Diagnosis related to the bladder, if any (optional).
 set diagnosis(BladderDiagnosis? value);/// Ovary diagnosis contextually relevant to the bladder (optional).
 OvaryDiagnosis? get ovaryDiagnosis;/// Ovary diagnosis contextually relevant to the bladder (optional).
 set ovaryDiagnosis(OvaryDiagnosis? value);/// Free-text conclusion or imaging comment (optional).
 String? get conclusion;/// Free-text conclusion or imaging comment (optional).
 set conclusion(String? value);
/// Create a copy of Bladder
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BladderCopyWith<Bladder> get copyWith => _$BladderCopyWithImpl<Bladder>(this as Bladder, _$identity);

  /// Serializes this Bladder to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'Bladder(regularity: $regularity, wallMm: $wallMm, douglasPouch: $douglasPouch, diagnosis: $diagnosis, ovaryDiagnosis: $ovaryDiagnosis, conclusion: $conclusion)';
}


}

/// @nodoc
abstract mixin class $BladderCopyWith<$Res>  {
  factory $BladderCopyWith(Bladder value, $Res Function(Bladder) _then) = _$BladderCopyWithImpl;
@useResult
$Res call({
 Regularity regularity, double? wallMm, DouglasPouch douglasPouch, BladderDiagnosis? diagnosis, OvaryDiagnosis? ovaryDiagnosis, String? conclusion
});




}
/// @nodoc
class _$BladderCopyWithImpl<$Res>
    implements $BladderCopyWith<$Res> {
  _$BladderCopyWithImpl(this._self, this._then);

  final Bladder _self;
  final $Res Function(Bladder) _then;

/// Create a copy of Bladder
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? regularity = null,Object? wallMm = freezed,Object? douglasPouch = null,Object? diagnosis = freezed,Object? ovaryDiagnosis = freezed,Object? conclusion = freezed,}) {
  return _then(_self.copyWith(
regularity: null == regularity ? _self.regularity : regularity // ignore: cast_nullable_to_non_nullable
as Regularity,wallMm: freezed == wallMm ? _self.wallMm : wallMm // ignore: cast_nullable_to_non_nullable
as double?,douglasPouch: null == douglasPouch ? _self.douglasPouch : douglasPouch // ignore: cast_nullable_to_non_nullable
as DouglasPouch,diagnosis: freezed == diagnosis ? _self.diagnosis : diagnosis // ignore: cast_nullable_to_non_nullable
as BladderDiagnosis?,ovaryDiagnosis: freezed == ovaryDiagnosis ? _self.ovaryDiagnosis : ovaryDiagnosis // ignore: cast_nullable_to_non_nullable
as OvaryDiagnosis?,conclusion: freezed == conclusion ? _self.conclusion : conclusion // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Bladder].
extension BladderPatterns on Bladder {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Bladder value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Bladder() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Bladder value)  $default,){
final _that = this;
switch (_that) {
case _Bladder():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Bladder value)?  $default,){
final _that = this;
switch (_that) {
case _Bladder() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Regularity regularity,  double? wallMm,  DouglasPouch douglasPouch,  BladderDiagnosis? diagnosis,  OvaryDiagnosis? ovaryDiagnosis,  String? conclusion)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Bladder() when $default != null:
return $default(_that.regularity,_that.wallMm,_that.douglasPouch,_that.diagnosis,_that.ovaryDiagnosis,_that.conclusion);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Regularity regularity,  double? wallMm,  DouglasPouch douglasPouch,  BladderDiagnosis? diagnosis,  OvaryDiagnosis? ovaryDiagnosis,  String? conclusion)  $default,) {final _that = this;
switch (_that) {
case _Bladder():
return $default(_that.regularity,_that.wallMm,_that.douglasPouch,_that.diagnosis,_that.ovaryDiagnosis,_that.conclusion);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Regularity regularity,  double? wallMm,  DouglasPouch douglasPouch,  BladderDiagnosis? diagnosis,  OvaryDiagnosis? ovaryDiagnosis,  String? conclusion)?  $default,) {final _that = this;
switch (_that) {
case _Bladder() when $default != null:
return $default(_that.regularity,_that.wallMm,_that.douglasPouch,_that.diagnosis,_that.ovaryDiagnosis,_that.conclusion);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Bladder implements Bladder {
   _Bladder({required this.regularity, this.wallMm, required this.douglasPouch, this.diagnosis, this.ovaryDiagnosis, this.conclusion});
  factory _Bladder.fromJson(Map<String, dynamic> json) => _$BladderFromJson(json);

/// State of bladder wall regularity.
@override  Regularity regularity;
/// Measured bladder wall thickness in millimeters (optional).
@override  double? wallMm;
/// Status of Douglas pouch (free or occupied).
@override  DouglasPouch douglasPouch;
/// Diagnosis related to the bladder, if any (optional).
@override  BladderDiagnosis? diagnosis;
/// Ovary diagnosis contextually relevant to the bladder (optional).
@override  OvaryDiagnosis? ovaryDiagnosis;
/// Free-text conclusion or imaging comment (optional).
@override  String? conclusion;

/// Create a copy of Bladder
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BladderCopyWith<_Bladder> get copyWith => __$BladderCopyWithImpl<_Bladder>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BladderToJson(this, );
}



@override
String toString() {
  return 'Bladder(regularity: $regularity, wallMm: $wallMm, douglasPouch: $douglasPouch, diagnosis: $diagnosis, ovaryDiagnosis: $ovaryDiagnosis, conclusion: $conclusion)';
}


}

/// @nodoc
abstract mixin class _$BladderCopyWith<$Res> implements $BladderCopyWith<$Res> {
  factory _$BladderCopyWith(_Bladder value, $Res Function(_Bladder) _then) = __$BladderCopyWithImpl;
@override @useResult
$Res call({
 Regularity regularity, double? wallMm, DouglasPouch douglasPouch, BladderDiagnosis? diagnosis, OvaryDiagnosis? ovaryDiagnosis, String? conclusion
});




}
/// @nodoc
class __$BladderCopyWithImpl<$Res>
    implements _$BladderCopyWith<$Res> {
  __$BladderCopyWithImpl(this._self, this._then);

  final _Bladder _self;
  final $Res Function(_Bladder) _then;

/// Create a copy of Bladder
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? regularity = null,Object? wallMm = freezed,Object? douglasPouch = null,Object? diagnosis = freezed,Object? ovaryDiagnosis = freezed,Object? conclusion = freezed,}) {
  return _then(_Bladder(
regularity: null == regularity ? _self.regularity : regularity // ignore: cast_nullable_to_non_nullable
as Regularity,wallMm: freezed == wallMm ? _self.wallMm : wallMm // ignore: cast_nullable_to_non_nullable
as double?,douglasPouch: null == douglasPouch ? _self.douglasPouch : douglasPouch // ignore: cast_nullable_to_non_nullable
as DouglasPouch,diagnosis: freezed == diagnosis ? _self.diagnosis : diagnosis // ignore: cast_nullable_to_non_nullable
as BladderDiagnosis?,ovaryDiagnosis: freezed == ovaryDiagnosis ? _self.ovaryDiagnosis : ovaryDiagnosis // ignore: cast_nullable_to_non_nullable
as OvaryDiagnosis?,conclusion: freezed == conclusion ? _self.conclusion : conclusion // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Nodules {

 bool get has; set has(bool value); NoduleDetail? get detail; set detail(NoduleDetail? value);
/// Create a copy of Nodules
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NodulesCopyWith<Nodules> get copyWith => _$NodulesCopyWithImpl<Nodules>(this as Nodules, _$identity);

  /// Serializes this Nodules to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'Nodules(has: $has, detail: $detail)';
}


}

/// @nodoc
abstract mixin class $NodulesCopyWith<$Res>  {
  factory $NodulesCopyWith(Nodules value, $Res Function(Nodules) _then) = _$NodulesCopyWithImpl;
@useResult
$Res call({
 bool has, NoduleDetail? detail
});


$NoduleDetailCopyWith<$Res>? get detail;

}
/// @nodoc
class _$NodulesCopyWithImpl<$Res>
    implements $NodulesCopyWith<$Res> {
  _$NodulesCopyWithImpl(this._self, this._then);

  final Nodules _self;
  final $Res Function(Nodules) _then;

/// Create a copy of Nodules
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? has = null,Object? detail = freezed,}) {
  return _then(_self.copyWith(
has: null == has ? _self.has : has // ignore: cast_nullable_to_non_nullable
as bool,detail: freezed == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as NoduleDetail?,
  ));
}
/// Create a copy of Nodules
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NoduleDetailCopyWith<$Res>? get detail {
    if (_self.detail == null) {
    return null;
  }

  return $NoduleDetailCopyWith<$Res>(_self.detail!, (value) {
    return _then(_self.copyWith(detail: value));
  });
}
}


/// Adds pattern-matching-related methods to [Nodules].
extension NodulesPatterns on Nodules {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Nodules value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Nodules() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Nodules value)  $default,){
final _that = this;
switch (_that) {
case _Nodules():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Nodules value)?  $default,){
final _that = this;
switch (_that) {
case _Nodules() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool has,  NoduleDetail? detail)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Nodules() when $default != null:
return $default(_that.has,_that.detail);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool has,  NoduleDetail? detail)  $default,) {final _that = this;
switch (_that) {
case _Nodules():
return $default(_that.has,_that.detail);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool has,  NoduleDetail? detail)?  $default,) {final _that = this;
switch (_that) {
case _Nodules() when $default != null:
return $default(_that.has,_that.detail);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Nodules implements Nodules {
   _Nodules({this.has = false, this.detail});
  factory _Nodules.fromJson(Map<String, dynamic> json) => _$NodulesFromJson(json);

@override@JsonKey()  bool has;
@override  NoduleDetail? detail;

/// Create a copy of Nodules
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NodulesCopyWith<_Nodules> get copyWith => __$NodulesCopyWithImpl<_Nodules>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NodulesToJson(this, );
}



@override
String toString() {
  return 'Nodules(has: $has, detail: $detail)';
}


}

/// @nodoc
abstract mixin class _$NodulesCopyWith<$Res> implements $NodulesCopyWith<$Res> {
  factory _$NodulesCopyWith(_Nodules value, $Res Function(_Nodules) _then) = __$NodulesCopyWithImpl;
@override @useResult
$Res call({
 bool has, NoduleDetail? detail
});


@override $NoduleDetailCopyWith<$Res>? get detail;

}
/// @nodoc
class __$NodulesCopyWithImpl<$Res>
    implements _$NodulesCopyWith<$Res> {
  __$NodulesCopyWithImpl(this._self, this._then);

  final _Nodules _self;
  final $Res Function(_Nodules) _then;

/// Create a copy of Nodules
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? has = null,Object? detail = freezed,}) {
  return _then(_Nodules(
has: null == has ? _self.has : has // ignore: cast_nullable_to_non_nullable
as bool,detail: freezed == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as NoduleDetail?,
  ));
}

/// Create a copy of Nodules
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NoduleDetailCopyWith<$Res>? get detail {
    if (_self.detail == null) {
    return null;
  }

  return $NoduleDetailCopyWith<$Res>(_self.detail!, (value) {
    return _then(_self.copyWith(detail: value));
  });
}
}


/// @nodoc
mixin _$NoduleDetail {

@JsonKey(defaultValue: NoduleLocation.unknown) NoduleLocation get location;@JsonKey(defaultValue: NoduleLocation.unknown) set location(NoduleLocation value); double get longitud; set longitud(double value); double get ap; set ap(double value); double get t; set t(double value); String? get description; set description(String? value);
/// Create a copy of NoduleDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NoduleDetailCopyWith<NoduleDetail> get copyWith => _$NoduleDetailCopyWithImpl<NoduleDetail>(this as NoduleDetail, _$identity);

  /// Serializes this NoduleDetail to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'NoduleDetail(location: $location, longitud: $longitud, ap: $ap, t: $t, description: $description)';
}


}

/// @nodoc
abstract mixin class $NoduleDetailCopyWith<$Res>  {
  factory $NoduleDetailCopyWith(NoduleDetail value, $Res Function(NoduleDetail) _then) = _$NoduleDetailCopyWithImpl;
@useResult
$Res call({
@JsonKey(defaultValue: NoduleLocation.unknown) NoduleLocation location, double longitud, double ap, double t, String? description
});




}
/// @nodoc
class _$NoduleDetailCopyWithImpl<$Res>
    implements $NoduleDetailCopyWith<$Res> {
  _$NoduleDetailCopyWithImpl(this._self, this._then);

  final NoduleDetail _self;
  final $Res Function(NoduleDetail) _then;

/// Create a copy of NoduleDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? location = null,Object? longitud = null,Object? ap = null,Object? t = null,Object? description = freezed,}) {
  return _then(_self.copyWith(
location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as NoduleLocation,longitud: null == longitud ? _self.longitud : longitud // ignore: cast_nullable_to_non_nullable
as double,ap: null == ap ? _self.ap : ap // ignore: cast_nullable_to_non_nullable
as double,t: null == t ? _self.t : t // ignore: cast_nullable_to_non_nullable
as double,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [NoduleDetail].
extension NoduleDetailPatterns on NoduleDetail {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NoduleDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NoduleDetail() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NoduleDetail value)  $default,){
final _that = this;
switch (_that) {
case _NoduleDetail():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NoduleDetail value)?  $default,){
final _that = this;
switch (_that) {
case _NoduleDetail() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(defaultValue: NoduleLocation.unknown)  NoduleLocation location,  double longitud,  double ap,  double t,  String? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NoduleDetail() when $default != null:
return $default(_that.location,_that.longitud,_that.ap,_that.t,_that.description);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(defaultValue: NoduleLocation.unknown)  NoduleLocation location,  double longitud,  double ap,  double t,  String? description)  $default,) {final _that = this;
switch (_that) {
case _NoduleDetail():
return $default(_that.location,_that.longitud,_that.ap,_that.t,_that.description);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(defaultValue: NoduleLocation.unknown)  NoduleLocation location,  double longitud,  double ap,  double t,  String? description)?  $default,) {final _that = this;
switch (_that) {
case _NoduleDetail() when $default != null:
return $default(_that.location,_that.longitud,_that.ap,_that.t,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NoduleDetail implements NoduleDetail {
   _NoduleDetail({@JsonKey(defaultValue: NoduleLocation.unknown) this.location = NoduleLocation.unknown, this.longitud = 0.0, this.ap = 0.0, this.t = 0.0, this.description});
  factory _NoduleDetail.fromJson(Map<String, dynamic> json) => _$NoduleDetailFromJson(json);

@override@JsonKey(defaultValue: NoduleLocation.unknown)  NoduleLocation location;
@override@JsonKey()  double longitud;
@override@JsonKey()  double ap;
@override@JsonKey()  double t;
@override  String? description;

/// Create a copy of NoduleDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NoduleDetailCopyWith<_NoduleDetail> get copyWith => __$NoduleDetailCopyWithImpl<_NoduleDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NoduleDetailToJson(this, );
}



@override
String toString() {
  return 'NoduleDetail(location: $location, longitud: $longitud, ap: $ap, t: $t, description: $description)';
}


}

/// @nodoc
abstract mixin class _$NoduleDetailCopyWith<$Res> implements $NoduleDetailCopyWith<$Res> {
  factory _$NoduleDetailCopyWith(_NoduleDetail value, $Res Function(_NoduleDetail) _then) = __$NoduleDetailCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(defaultValue: NoduleLocation.unknown) NoduleLocation location, double longitud, double ap, double t, String? description
});




}
/// @nodoc
class __$NoduleDetailCopyWithImpl<$Res>
    implements _$NoduleDetailCopyWith<$Res> {
  __$NoduleDetailCopyWithImpl(this._self, this._then);

  final _NoduleDetail _self;
  final $Res Function(_NoduleDetail) _then;

/// Create a copy of NoduleDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? location = null,Object? longitud = null,Object? ap = null,Object? t = null,Object? description = freezed,}) {
  return _then(_NoduleDetail(
location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as NoduleLocation,longitud: null == longitud ? _self.longitud : longitud // ignore: cast_nullable_to_non_nullable
as double,ap: null == ap ? _self.ap : ap // ignore: cast_nullable_to_non_nullable
as double,t: null == t ? _self.t : t // ignore: cast_nullable_to_non_nullable
as double,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Findings {

/// Diagnóstico uterino en texto libre (opcional).
 String? get uterusDiagnosis;/// Diagnóstico uterino en texto libre (opcional).
 set uterusDiagnosis(String? value);/// Conclusión clínica general en texto libre (opcional).
 String? get conclusion;/// Conclusión clínica general en texto libre (opcional).
 set conclusion(String? value);
/// Create a copy of Findings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FindingsCopyWith<Findings> get copyWith => _$FindingsCopyWithImpl<Findings>(this as Findings, _$identity);

  /// Serializes this Findings to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'Findings(uterusDiagnosis: $uterusDiagnosis, conclusion: $conclusion)';
}


}

/// @nodoc
abstract mixin class $FindingsCopyWith<$Res>  {
  factory $FindingsCopyWith(Findings value, $Res Function(Findings) _then) = _$FindingsCopyWithImpl;
@useResult
$Res call({
 String? uterusDiagnosis, String? conclusion
});




}
/// @nodoc
class _$FindingsCopyWithImpl<$Res>
    implements $FindingsCopyWith<$Res> {
  _$FindingsCopyWithImpl(this._self, this._then);

  final Findings _self;
  final $Res Function(Findings) _then;

/// Create a copy of Findings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uterusDiagnosis = freezed,Object? conclusion = freezed,}) {
  return _then(_self.copyWith(
uterusDiagnosis: freezed == uterusDiagnosis ? _self.uterusDiagnosis : uterusDiagnosis // ignore: cast_nullable_to_non_nullable
as String?,conclusion: freezed == conclusion ? _self.conclusion : conclusion // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Findings].
extension FindingsPatterns on Findings {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Findings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Findings() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Findings value)  $default,){
final _that = this;
switch (_that) {
case _Findings():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Findings value)?  $default,){
final _that = this;
switch (_that) {
case _Findings() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? uterusDiagnosis,  String? conclusion)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Findings() when $default != null:
return $default(_that.uterusDiagnosis,_that.conclusion);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? uterusDiagnosis,  String? conclusion)  $default,) {final _that = this;
switch (_that) {
case _Findings():
return $default(_that.uterusDiagnosis,_that.conclusion);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? uterusDiagnosis,  String? conclusion)?  $default,) {final _that = this;
switch (_that) {
case _Findings() when $default != null:
return $default(_that.uterusDiagnosis,_that.conclusion);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Findings implements Findings {
   _Findings({this.uterusDiagnosis, this.conclusion});
  factory _Findings.fromJson(Map<String, dynamic> json) => _$FindingsFromJson(json);

/// Diagnóstico uterino en texto libre (opcional).
@override  String? uterusDiagnosis;
/// Conclusión clínica general en texto libre (opcional).
@override  String? conclusion;

/// Create a copy of Findings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FindingsCopyWith<_Findings> get copyWith => __$FindingsCopyWithImpl<_Findings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FindingsToJson(this, );
}



@override
String toString() {
  return 'Findings(uterusDiagnosis: $uterusDiagnosis, conclusion: $conclusion)';
}


}

/// @nodoc
abstract mixin class _$FindingsCopyWith<$Res> implements $FindingsCopyWith<$Res> {
  factory _$FindingsCopyWith(_Findings value, $Res Function(_Findings) _then) = __$FindingsCopyWithImpl;
@override @useResult
$Res call({
 String? uterusDiagnosis, String? conclusion
});




}
/// @nodoc
class __$FindingsCopyWithImpl<$Res>
    implements _$FindingsCopyWith<$Res> {
  __$FindingsCopyWithImpl(this._self, this._then);

  final _Findings _self;
  final $Res Function(_Findings) _then;

/// Create a copy of Findings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uterusDiagnosis = freezed,Object? conclusion = freezed,}) {
  return _then(_Findings(
uterusDiagnosis: freezed == uterusDiagnosis ? _self.uterusDiagnosis : uterusDiagnosis // ignore: cast_nullable_to_non_nullable
as String?,conclusion: freezed == conclusion ? _self.conclusion : conclusion // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Report {

/// Unique identifier for this report.
 String get id;/// Timestamp when the report was created.
 DateTime get createdAt;/// Information identifying the patient of the report.
 Patient get patient;/// Study protocol and equipment associated with the report.
 StudyProtocol get protocol;/// Clinical findings included in the examination.
 Findings get findings;/// Name of the reporting doctor or signee (optional).
 String? get doctor;/// Clinic, hospital, or site associated with the report (optional).
 String? get clinic;/// Arbitrary additional metadata (optional).
 Map<String, dynamic>? get meta;
/// Create a copy of Report
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportCopyWith<Report> get copyWith => _$ReportCopyWithImpl<Report>(this as Report, _$identity);

  /// Serializes this Report to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Report&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.patient, patient) || other.patient == patient)&&(identical(other.protocol, protocol) || other.protocol == protocol)&&(identical(other.findings, findings) || other.findings == findings)&&(identical(other.doctor, doctor) || other.doctor == doctor)&&(identical(other.clinic, clinic) || other.clinic == clinic)&&const DeepCollectionEquality().equals(other.meta, meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,patient,protocol,findings,doctor,clinic,const DeepCollectionEquality().hash(meta));

@override
String toString() {
  return 'Report(id: $id, createdAt: $createdAt, patient: $patient, protocol: $protocol, findings: $findings, doctor: $doctor, clinic: $clinic, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $ReportCopyWith<$Res>  {
  factory $ReportCopyWith(Report value, $Res Function(Report) _then) = _$ReportCopyWithImpl;
@useResult
$Res call({
 String id, DateTime createdAt, Patient patient, StudyProtocol protocol, Findings findings, String? doctor, String? clinic, Map<String, dynamic>? meta
});


$PatientCopyWith<$Res> get patient;$StudyProtocolCopyWith<$Res> get protocol;$FindingsCopyWith<$Res> get findings;

}
/// @nodoc
class _$ReportCopyWithImpl<$Res>
    implements $ReportCopyWith<$Res> {
  _$ReportCopyWithImpl(this._self, this._then);

  final Report _self;
  final $Res Function(Report) _then;

/// Create a copy of Report
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? createdAt = null,Object? patient = null,Object? protocol = null,Object? findings = null,Object? doctor = freezed,Object? clinic = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,patient: null == patient ? _self.patient : patient // ignore: cast_nullable_to_non_nullable
as Patient,protocol: null == protocol ? _self.protocol : protocol // ignore: cast_nullable_to_non_nullable
as StudyProtocol,findings: null == findings ? _self.findings : findings // ignore: cast_nullable_to_non_nullable
as Findings,doctor: freezed == doctor ? _self.doctor : doctor // ignore: cast_nullable_to_non_nullable
as String?,clinic: freezed == clinic ? _self.clinic : clinic // ignore: cast_nullable_to_non_nullable
as String?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}
/// Create a copy of Report
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PatientCopyWith<$Res> get patient {
  
  return $PatientCopyWith<$Res>(_self.patient, (value) {
    return _then(_self.copyWith(patient: value));
  });
}/// Create a copy of Report
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StudyProtocolCopyWith<$Res> get protocol {
  
  return $StudyProtocolCopyWith<$Res>(_self.protocol, (value) {
    return _then(_self.copyWith(protocol: value));
  });
}/// Create a copy of Report
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FindingsCopyWith<$Res> get findings {
  
  return $FindingsCopyWith<$Res>(_self.findings, (value) {
    return _then(_self.copyWith(findings: value));
  });
}
}


/// Adds pattern-matching-related methods to [Report].
extension ReportPatterns on Report {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Report value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Report() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Report value)  $default,){
final _that = this;
switch (_that) {
case _Report():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Report value)?  $default,){
final _that = this;
switch (_that) {
case _Report() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  Patient patient,  StudyProtocol protocol,  Findings findings,  String? doctor,  String? clinic,  Map<String, dynamic>? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Report() when $default != null:
return $default(_that.id,_that.createdAt,_that.patient,_that.protocol,_that.findings,_that.doctor,_that.clinic,_that.meta);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  Patient patient,  StudyProtocol protocol,  Findings findings,  String? doctor,  String? clinic,  Map<String, dynamic>? meta)  $default,) {final _that = this;
switch (_that) {
case _Report():
return $default(_that.id,_that.createdAt,_that.patient,_that.protocol,_that.findings,_that.doctor,_that.clinic,_that.meta);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime createdAt,  Patient patient,  StudyProtocol protocol,  Findings findings,  String? doctor,  String? clinic,  Map<String, dynamic>? meta)?  $default,) {final _that = this;
switch (_that) {
case _Report() when $default != null:
return $default(_that.id,_that.createdAt,_that.patient,_that.protocol,_that.findings,_that.doctor,_that.clinic,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Report extends Report {
  const _Report({required this.id, required this.createdAt, required this.patient, required this.protocol, required this.findings, this.doctor, this.clinic, final  Map<String, dynamic>? meta}): _meta = meta,super._();
  factory _Report.fromJson(Map<String, dynamic> json) => _$ReportFromJson(json);

/// Unique identifier for this report.
@override final  String id;
/// Timestamp when the report was created.
@override final  DateTime createdAt;
/// Information identifying the patient of the report.
@override final  Patient patient;
/// Study protocol and equipment associated with the report.
@override final  StudyProtocol protocol;
/// Clinical findings included in the examination.
@override final  Findings findings;
/// Name of the reporting doctor or signee (optional).
@override final  String? doctor;
/// Clinic, hospital, or site associated with the report (optional).
@override final  String? clinic;
/// Arbitrary additional metadata (optional).
 final  Map<String, dynamic>? _meta;
/// Arbitrary additional metadata (optional).
@override Map<String, dynamic>? get meta {
  final value = _meta;
  if (value == null) return null;
  if (_meta is EqualUnmodifiableMapView) return _meta;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of Report
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportCopyWith<_Report> get copyWith => __$ReportCopyWithImpl<_Report>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReportToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Report&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.patient, patient) || other.patient == patient)&&(identical(other.protocol, protocol) || other.protocol == protocol)&&(identical(other.findings, findings) || other.findings == findings)&&(identical(other.doctor, doctor) || other.doctor == doctor)&&(identical(other.clinic, clinic) || other.clinic == clinic)&&const DeepCollectionEquality().equals(other._meta, _meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,patient,protocol,findings,doctor,clinic,const DeepCollectionEquality().hash(_meta));

@override
String toString() {
  return 'Report(id: $id, createdAt: $createdAt, patient: $patient, protocol: $protocol, findings: $findings, doctor: $doctor, clinic: $clinic, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$ReportCopyWith<$Res> implements $ReportCopyWith<$Res> {
  factory _$ReportCopyWith(_Report value, $Res Function(_Report) _then) = __$ReportCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime createdAt, Patient patient, StudyProtocol protocol, Findings findings, String? doctor, String? clinic, Map<String, dynamic>? meta
});


@override $PatientCopyWith<$Res> get patient;@override $StudyProtocolCopyWith<$Res> get protocol;@override $FindingsCopyWith<$Res> get findings;

}
/// @nodoc
class __$ReportCopyWithImpl<$Res>
    implements _$ReportCopyWith<$Res> {
  __$ReportCopyWithImpl(this._self, this._then);

  final _Report _self;
  final $Res Function(_Report) _then;

/// Create a copy of Report
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? createdAt = null,Object? patient = null,Object? protocol = null,Object? findings = null,Object? doctor = freezed,Object? clinic = freezed,Object? meta = freezed,}) {
  return _then(_Report(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,patient: null == patient ? _self.patient : patient // ignore: cast_nullable_to_non_nullable
as Patient,protocol: null == protocol ? _self.protocol : protocol // ignore: cast_nullable_to_non_nullable
as StudyProtocol,findings: null == findings ? _self.findings : findings // ignore: cast_nullable_to_non_nullable
as Findings,doctor: freezed == doctor ? _self.doctor : doctor // ignore: cast_nullable_to_non_nullable
as String?,clinic: freezed == clinic ? _self.clinic : clinic // ignore: cast_nullable_to_non_nullable
as String?,meta: freezed == meta ? _self._meta : meta // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

/// Create a copy of Report
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PatientCopyWith<$Res> get patient {
  
  return $PatientCopyWith<$Res>(_self.patient, (value) {
    return _then(_self.copyWith(patient: value));
  });
}/// Create a copy of Report
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StudyProtocolCopyWith<$Res> get protocol {
  
  return $StudyProtocolCopyWith<$Res>(_self.protocol, (value) {
    return _then(_self.copyWith(protocol: value));
  });
}/// Create a copy of Report
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FindingsCopyWith<$Res> get findings {
  
  return $FindingsCopyWith<$Res>(_self.findings, (value) {
    return _then(_self.copyWith(findings: value));
  });
}
}


/// @nodoc
mixin _$ReportDraft {

/// [id]: Draft unique identifier (optional).
 String? get id;/// [id]: Draft unique identifier (optional).
 set id(String? value);/// [createdAt]: Timestamp of creation (optional).
 DateTime? get createdAt;/// [createdAt]: Timestamp of creation (optional).
 set createdAt(DateTime? value);/// [patient]: Patient info data model (optional).
 Patient? get patient;/// [patient]: Patient info data model (optional).
 set patient(Patient? value);/// [protocol]: Study protocol data (optional).
 StudyProtocol? get protocol;/// [protocol]: Study protocol data (optional).
 set protocol(StudyProtocol? value);/// [findings]: Clinical findings (optional).
 Findings? get findings;/// [findings]: Clinical findings (optional).
 set findings(Findings? value);/// [bladder]: Optional bladder findings.
 Bladder? get bladder;/// [bladder]: Optional bladder findings.
 set bladder(Bladder? value);/// [rightOvary]: Data for right ovary (required).
 Ovary get rightOvary;/// [rightOvary]: Data for right ovary (required).
 set rightOvary(Ovary value);/// [leftOvary]: Data for left ovary (required).
 Ovary get leftOvary;/// [leftOvary]: Data for left ovary (required).
 set leftOvary(Ovary value);/// [doctor]: Reporting doctor (optional).
 String? get doctor;/// [doctor]: Reporting doctor (optional).
 set doctor(String? value);/// [clinic]: Site or clinic (optional).
 String? get clinic;/// [clinic]: Site or clinic (optional).
 set clinic(String? value);/// [meta]: Extra metadata (optional).
 Map<String, dynamic>? get meta;/// [meta]: Extra metadata (optional).
 set meta(Map<String, dynamic>? value);/// [uterineFindings]: Optional uterine findings.
 UterineFindings? get uterineFindings;/// [uterineFindings]: Optional uterine findings.
 set uterineFindings(UterineFindings? value);/// [nodules]: Optional nodules findings.
 Nodules? get nodules;/// [nodules]: Optional nodules findings.
 set nodules(Nodules? value);
/// Create a copy of ReportDraft
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportDraftCopyWith<ReportDraft> get copyWith => _$ReportDraftCopyWithImpl<ReportDraft>(this as ReportDraft, _$identity);

  /// Serializes this ReportDraft to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'ReportDraft(id: $id, createdAt: $createdAt, patient: $patient, protocol: $protocol, findings: $findings, bladder: $bladder, rightOvary: $rightOvary, leftOvary: $leftOvary, doctor: $doctor, clinic: $clinic, meta: $meta, uterineFindings: $uterineFindings, nodules: $nodules)';
}


}

/// @nodoc
abstract mixin class $ReportDraftCopyWith<$Res>  {
  factory $ReportDraftCopyWith(ReportDraft value, $Res Function(ReportDraft) _then) = _$ReportDraftCopyWithImpl;
@useResult
$Res call({
 String? id, DateTime? createdAt, Patient? patient, StudyProtocol? protocol, Findings? findings, Bladder? bladder, Ovary rightOvary, Ovary leftOvary, String? doctor, String? clinic, Map<String, dynamic>? meta, UterineFindings? uterineFindings, Nodules? nodules
});


$PatientCopyWith<$Res>? get patient;$StudyProtocolCopyWith<$Res>? get protocol;$FindingsCopyWith<$Res>? get findings;$BladderCopyWith<$Res>? get bladder;$OvaryCopyWith<$Res> get rightOvary;$OvaryCopyWith<$Res> get leftOvary;$UterineFindingsCopyWith<$Res>? get uterineFindings;$NodulesCopyWith<$Res>? get nodules;

}
/// @nodoc
class _$ReportDraftCopyWithImpl<$Res>
    implements $ReportDraftCopyWith<$Res> {
  _$ReportDraftCopyWithImpl(this._self, this._then);

  final ReportDraft _self;
  final $Res Function(ReportDraft) _then;

/// Create a copy of ReportDraft
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? createdAt = freezed,Object? patient = freezed,Object? protocol = freezed,Object? findings = freezed,Object? bladder = freezed,Object? rightOvary = null,Object? leftOvary = null,Object? doctor = freezed,Object? clinic = freezed,Object? meta = freezed,Object? uterineFindings = freezed,Object? nodules = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,patient: freezed == patient ? _self.patient : patient // ignore: cast_nullable_to_non_nullable
as Patient?,protocol: freezed == protocol ? _self.protocol : protocol // ignore: cast_nullable_to_non_nullable
as StudyProtocol?,findings: freezed == findings ? _self.findings : findings // ignore: cast_nullable_to_non_nullable
as Findings?,bladder: freezed == bladder ? _self.bladder : bladder // ignore: cast_nullable_to_non_nullable
as Bladder?,rightOvary: null == rightOvary ? _self.rightOvary : rightOvary // ignore: cast_nullable_to_non_nullable
as Ovary,leftOvary: null == leftOvary ? _self.leftOvary : leftOvary // ignore: cast_nullable_to_non_nullable
as Ovary,doctor: freezed == doctor ? _self.doctor : doctor // ignore: cast_nullable_to_non_nullable
as String?,clinic: freezed == clinic ? _self.clinic : clinic // ignore: cast_nullable_to_non_nullable
as String?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,uterineFindings: freezed == uterineFindings ? _self.uterineFindings : uterineFindings // ignore: cast_nullable_to_non_nullable
as UterineFindings?,nodules: freezed == nodules ? _self.nodules : nodules // ignore: cast_nullable_to_non_nullable
as Nodules?,
  ));
}
/// Create a copy of ReportDraft
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PatientCopyWith<$Res>? get patient {
    if (_self.patient == null) {
    return null;
  }

  return $PatientCopyWith<$Res>(_self.patient!, (value) {
    return _then(_self.copyWith(patient: value));
  });
}/// Create a copy of ReportDraft
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StudyProtocolCopyWith<$Res>? get protocol {
    if (_self.protocol == null) {
    return null;
  }

  return $StudyProtocolCopyWith<$Res>(_self.protocol!, (value) {
    return _then(_self.copyWith(protocol: value));
  });
}/// Create a copy of ReportDraft
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FindingsCopyWith<$Res>? get findings {
    if (_self.findings == null) {
    return null;
  }

  return $FindingsCopyWith<$Res>(_self.findings!, (value) {
    return _then(_self.copyWith(findings: value));
  });
}/// Create a copy of ReportDraft
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BladderCopyWith<$Res>? get bladder {
    if (_self.bladder == null) {
    return null;
  }

  return $BladderCopyWith<$Res>(_self.bladder!, (value) {
    return _then(_self.copyWith(bladder: value));
  });
}/// Create a copy of ReportDraft
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OvaryCopyWith<$Res> get rightOvary {
  
  return $OvaryCopyWith<$Res>(_self.rightOvary, (value) {
    return _then(_self.copyWith(rightOvary: value));
  });
}/// Create a copy of ReportDraft
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OvaryCopyWith<$Res> get leftOvary {
  
  return $OvaryCopyWith<$Res>(_self.leftOvary, (value) {
    return _then(_self.copyWith(leftOvary: value));
  });
}/// Create a copy of ReportDraft
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UterineFindingsCopyWith<$Res>? get uterineFindings {
    if (_self.uterineFindings == null) {
    return null;
  }

  return $UterineFindingsCopyWith<$Res>(_self.uterineFindings!, (value) {
    return _then(_self.copyWith(uterineFindings: value));
  });
}/// Create a copy of ReportDraft
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NodulesCopyWith<$Res>? get nodules {
    if (_self.nodules == null) {
    return null;
  }

  return $NodulesCopyWith<$Res>(_self.nodules!, (value) {
    return _then(_self.copyWith(nodules: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReportDraft].
extension ReportDraftPatterns on ReportDraft {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportDraft value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportDraft() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportDraft value)  $default,){
final _that = this;
switch (_that) {
case _ReportDraft():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportDraft value)?  $default,){
final _that = this;
switch (_that) {
case _ReportDraft() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  DateTime? createdAt,  Patient? patient,  StudyProtocol? protocol,  Findings? findings,  Bladder? bladder,  Ovary rightOvary,  Ovary leftOvary,  String? doctor,  String? clinic,  Map<String, dynamic>? meta,  UterineFindings? uterineFindings,  Nodules? nodules)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportDraft() when $default != null:
return $default(_that.id,_that.createdAt,_that.patient,_that.protocol,_that.findings,_that.bladder,_that.rightOvary,_that.leftOvary,_that.doctor,_that.clinic,_that.meta,_that.uterineFindings,_that.nodules);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  DateTime? createdAt,  Patient? patient,  StudyProtocol? protocol,  Findings? findings,  Bladder? bladder,  Ovary rightOvary,  Ovary leftOvary,  String? doctor,  String? clinic,  Map<String, dynamic>? meta,  UterineFindings? uterineFindings,  Nodules? nodules)  $default,) {final _that = this;
switch (_that) {
case _ReportDraft():
return $default(_that.id,_that.createdAt,_that.patient,_that.protocol,_that.findings,_that.bladder,_that.rightOvary,_that.leftOvary,_that.doctor,_that.clinic,_that.meta,_that.uterineFindings,_that.nodules);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  DateTime? createdAt,  Patient? patient,  StudyProtocol? protocol,  Findings? findings,  Bladder? bladder,  Ovary rightOvary,  Ovary leftOvary,  String? doctor,  String? clinic,  Map<String, dynamic>? meta,  UterineFindings? uterineFindings,  Nodules? nodules)?  $default,) {final _that = this;
switch (_that) {
case _ReportDraft() when $default != null:
return $default(_that.id,_that.createdAt,_that.patient,_that.protocol,_that.findings,_that.bladder,_that.rightOvary,_that.leftOvary,_that.doctor,_that.clinic,_that.meta,_that.uterineFindings,_that.nodules);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReportDraft implements ReportDraft {
   _ReportDraft({this.id, this.createdAt, this.patient, this.protocol, this.findings, this.bladder, required this.rightOvary, required this.leftOvary, this.doctor, this.clinic, this.meta, this.uterineFindings, this.nodules});
  factory _ReportDraft.fromJson(Map<String, dynamic> json) => _$ReportDraftFromJson(json);

/// [id]: Draft unique identifier (optional).
@override  String? id;
/// [createdAt]: Timestamp of creation (optional).
@override  DateTime? createdAt;
/// [patient]: Patient info data model (optional).
@override  Patient? patient;
/// [protocol]: Study protocol data (optional).
@override  StudyProtocol? protocol;
/// [findings]: Clinical findings (optional).
@override  Findings? findings;
/// [bladder]: Optional bladder findings.
@override  Bladder? bladder;
/// [rightOvary]: Data for right ovary (required).
@override  Ovary rightOvary;
/// [leftOvary]: Data for left ovary (required).
@override  Ovary leftOvary;
/// [doctor]: Reporting doctor (optional).
@override  String? doctor;
/// [clinic]: Site or clinic (optional).
@override  String? clinic;
/// [meta]: Extra metadata (optional).
@override  Map<String, dynamic>? meta;
/// [uterineFindings]: Optional uterine findings.
@override  UterineFindings? uterineFindings;
/// [nodules]: Optional nodules findings.
@override  Nodules? nodules;

/// Create a copy of ReportDraft
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportDraftCopyWith<_ReportDraft> get copyWith => __$ReportDraftCopyWithImpl<_ReportDraft>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReportDraftToJson(this, );
}



@override
String toString() {
  return 'ReportDraft(id: $id, createdAt: $createdAt, patient: $patient, protocol: $protocol, findings: $findings, bladder: $bladder, rightOvary: $rightOvary, leftOvary: $leftOvary, doctor: $doctor, clinic: $clinic, meta: $meta, uterineFindings: $uterineFindings, nodules: $nodules)';
}


}

/// @nodoc
abstract mixin class _$ReportDraftCopyWith<$Res> implements $ReportDraftCopyWith<$Res> {
  factory _$ReportDraftCopyWith(_ReportDraft value, $Res Function(_ReportDraft) _then) = __$ReportDraftCopyWithImpl;
@override @useResult
$Res call({
 String? id, DateTime? createdAt, Patient? patient, StudyProtocol? protocol, Findings? findings, Bladder? bladder, Ovary rightOvary, Ovary leftOvary, String? doctor, String? clinic, Map<String, dynamic>? meta, UterineFindings? uterineFindings, Nodules? nodules
});


@override $PatientCopyWith<$Res>? get patient;@override $StudyProtocolCopyWith<$Res>? get protocol;@override $FindingsCopyWith<$Res>? get findings;@override $BladderCopyWith<$Res>? get bladder;@override $OvaryCopyWith<$Res> get rightOvary;@override $OvaryCopyWith<$Res> get leftOvary;@override $UterineFindingsCopyWith<$Res>? get uterineFindings;@override $NodulesCopyWith<$Res>? get nodules;

}
/// @nodoc
class __$ReportDraftCopyWithImpl<$Res>
    implements _$ReportDraftCopyWith<$Res> {
  __$ReportDraftCopyWithImpl(this._self, this._then);

  final _ReportDraft _self;
  final $Res Function(_ReportDraft) _then;

/// Create a copy of ReportDraft
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? createdAt = freezed,Object? patient = freezed,Object? protocol = freezed,Object? findings = freezed,Object? bladder = freezed,Object? rightOvary = null,Object? leftOvary = null,Object? doctor = freezed,Object? clinic = freezed,Object? meta = freezed,Object? uterineFindings = freezed,Object? nodules = freezed,}) {
  return _then(_ReportDraft(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,patient: freezed == patient ? _self.patient : patient // ignore: cast_nullable_to_non_nullable
as Patient?,protocol: freezed == protocol ? _self.protocol : protocol // ignore: cast_nullable_to_non_nullable
as StudyProtocol?,findings: freezed == findings ? _self.findings : findings // ignore: cast_nullable_to_non_nullable
as Findings?,bladder: freezed == bladder ? _self.bladder : bladder // ignore: cast_nullable_to_non_nullable
as Bladder?,rightOvary: null == rightOvary ? _self.rightOvary : rightOvary // ignore: cast_nullable_to_non_nullable
as Ovary,leftOvary: null == leftOvary ? _self.leftOvary : leftOvary // ignore: cast_nullable_to_non_nullable
as Ovary,doctor: freezed == doctor ? _self.doctor : doctor // ignore: cast_nullable_to_non_nullable
as String?,clinic: freezed == clinic ? _self.clinic : clinic // ignore: cast_nullable_to_non_nullable
as String?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,uterineFindings: freezed == uterineFindings ? _self.uterineFindings : uterineFindings // ignore: cast_nullable_to_non_nullable
as UterineFindings?,nodules: freezed == nodules ? _self.nodules : nodules // ignore: cast_nullable_to_non_nullable
as Nodules?,
  ));
}

/// Create a copy of ReportDraft
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PatientCopyWith<$Res>? get patient {
    if (_self.patient == null) {
    return null;
  }

  return $PatientCopyWith<$Res>(_self.patient!, (value) {
    return _then(_self.copyWith(patient: value));
  });
}/// Create a copy of ReportDraft
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StudyProtocolCopyWith<$Res>? get protocol {
    if (_self.protocol == null) {
    return null;
  }

  return $StudyProtocolCopyWith<$Res>(_self.protocol!, (value) {
    return _then(_self.copyWith(protocol: value));
  });
}/// Create a copy of ReportDraft
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FindingsCopyWith<$Res>? get findings {
    if (_self.findings == null) {
    return null;
  }

  return $FindingsCopyWith<$Res>(_self.findings!, (value) {
    return _then(_self.copyWith(findings: value));
  });
}/// Create a copy of ReportDraft
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BladderCopyWith<$Res>? get bladder {
    if (_self.bladder == null) {
    return null;
  }

  return $BladderCopyWith<$Res>(_self.bladder!, (value) {
    return _then(_self.copyWith(bladder: value));
  });
}/// Create a copy of ReportDraft
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OvaryCopyWith<$Res> get rightOvary {
  
  return $OvaryCopyWith<$Res>(_self.rightOvary, (value) {
    return _then(_self.copyWith(rightOvary: value));
  });
}/// Create a copy of ReportDraft
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OvaryCopyWith<$Res> get leftOvary {
  
  return $OvaryCopyWith<$Res>(_self.leftOvary, (value) {
    return _then(_self.copyWith(leftOvary: value));
  });
}/// Create a copy of ReportDraft
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UterineFindingsCopyWith<$Res>? get uterineFindings {
    if (_self.uterineFindings == null) {
    return null;
  }

  return $UterineFindingsCopyWith<$Res>(_self.uterineFindings!, (value) {
    return _then(_self.copyWith(uterineFindings: value));
  });
}/// Create a copy of ReportDraft
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NodulesCopyWith<$Res>? get nodules {
    if (_self.nodules == null) {
    return null;
  }

  return $NodulesCopyWith<$Res>(_self.nodules!, (value) {
    return _then(_self.copyWith(nodules: value));
  });
}
}


/// @nodoc
mixin _$UterineFindings {

/// Longitudinal uterine diameter in millimeters; measures the maximum axis of the uterus.
 double? get longitud;/// Longitudinal uterine diameter in millimeters; measures the maximum axis of the uterus.
 set longitud(double? value);/// Anteroposterior diameter in mm; reference for shape and size.
 double? get ap;/// Anteroposterior diameter in mm; reference for shape and size.
 set ap(double? value);/// Transverse diameter in mm; useful for volumetric calculations and morphological alterations.
 double? get transverse;/// Transverse diameter in mm; useful for volumetric calculations and morphological alterations.
 set transverse(double? value);/// Auxiliary uterine measurement in mm; may record variants or focal findings.
 double? get other;/// Auxiliary uterine measurement in mm; may record variants or focal findings.
 set other(double? value);/// Calculated uterine volume in cubic millimeters; evaluates growth, hypertrophy, or reduction.
 double? get volume;/// Calculated uterine volume in cubic millimeters; evaluates growth, hypertrophy, or reduction.
 set volume(double? value);/// Anatomical localization of the uterus in the pelvis.
@JsonKey(unknownEnumValue: UterusLocalization.central) UterusLocalization get localization;/// Anatomical localization of the uterus in the pelvis.
@JsonKey(unknownEnumValue: UterusLocalization.central) set localization(UterusLocalization value);/// Physiological or pathological position of the uterus.
@JsonKey(unknownEnumValue: UterusPosition.avf) UterusPosition get position;/// Physiological or pathological position of the uterus.
@JsonKey(unknownEnumValue: UterusPosition.avf) set position(UterusPosition value);/// Appearance of the uterine surface on ultrasound.
@JsonKey(unknownEnumValue: UterusSurface.regular) UterusSurface get surface;/// Appearance of the uterine surface on ultrasound.
@JsonKey(unknownEnumValue: UterusSurface.regular) set surface(UterusSurface value);/// Type or ultrasound pattern of the observed myometrium.
@JsonKey(unknownEnumValue: MyometriumType.homogeneous) MyometriumType get myometrium;/// Type or ultrasound pattern of the observed myometrium.
@JsonKey(unknownEnumValue: MyometriumType.homogeneous) set myometrium(MyometriumType value);/// Appearance of the endometrium detected in the study.
@JsonKey(unknownEnumValue: EndometriumAspect.proli) EndometriumAspect get endometrium;/// Appearance of the endometrium detected in the study.
@JsonKey(unknownEnumValue: EndometriumAspect.proli) set endometrium(EndometriumAspect value);
/// Create a copy of UterineFindings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UterineFindingsCopyWith<UterineFindings> get copyWith => _$UterineFindingsCopyWithImpl<UterineFindings>(this as UterineFindings, _$identity);

  /// Serializes this UterineFindings to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'UterineFindings(longitud: $longitud, ap: $ap, transverse: $transverse, other: $other, volume: $volume, localization: $localization, position: $position, surface: $surface, myometrium: $myometrium, endometrium: $endometrium)';
}


}

/// @nodoc
abstract mixin class $UterineFindingsCopyWith<$Res>  {
  factory $UterineFindingsCopyWith(UterineFindings value, $Res Function(UterineFindings) _then) = _$UterineFindingsCopyWithImpl;
@useResult
$Res call({
 double? longitud, double? ap, double? transverse, double? other, double? volume,@JsonKey(unknownEnumValue: UterusLocalization.central) UterusLocalization localization,@JsonKey(unknownEnumValue: UterusPosition.avf) UterusPosition position,@JsonKey(unknownEnumValue: UterusSurface.regular) UterusSurface surface,@JsonKey(unknownEnumValue: MyometriumType.homogeneous) MyometriumType myometrium,@JsonKey(unknownEnumValue: EndometriumAspect.proli) EndometriumAspect endometrium
});




}
/// @nodoc
class _$UterineFindingsCopyWithImpl<$Res>
    implements $UterineFindingsCopyWith<$Res> {
  _$UterineFindingsCopyWithImpl(this._self, this._then);

  final UterineFindings _self;
  final $Res Function(UterineFindings) _then;

/// Create a copy of UterineFindings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? longitud = freezed,Object? ap = freezed,Object? transverse = freezed,Object? other = freezed,Object? volume = freezed,Object? localization = null,Object? position = null,Object? surface = null,Object? myometrium = null,Object? endometrium = null,}) {
  return _then(_self.copyWith(
longitud: freezed == longitud ? _self.longitud : longitud // ignore: cast_nullable_to_non_nullable
as double?,ap: freezed == ap ? _self.ap : ap // ignore: cast_nullable_to_non_nullable
as double?,transverse: freezed == transverse ? _self.transverse : transverse // ignore: cast_nullable_to_non_nullable
as double?,other: freezed == other ? _self.other : other // ignore: cast_nullable_to_non_nullable
as double?,volume: freezed == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as double?,localization: null == localization ? _self.localization : localization // ignore: cast_nullable_to_non_nullable
as UterusLocalization,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as UterusPosition,surface: null == surface ? _self.surface : surface // ignore: cast_nullable_to_non_nullable
as UterusSurface,myometrium: null == myometrium ? _self.myometrium : myometrium // ignore: cast_nullable_to_non_nullable
as MyometriumType,endometrium: null == endometrium ? _self.endometrium : endometrium // ignore: cast_nullable_to_non_nullable
as EndometriumAspect,
  ));
}

}


/// Adds pattern-matching-related methods to [UterineFindings].
extension UterineFindingsPatterns on UterineFindings {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UterineFindings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UterineFindings() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UterineFindings value)  $default,){
final _that = this;
switch (_that) {
case _UterineFindings():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UterineFindings value)?  $default,){
final _that = this;
switch (_that) {
case _UterineFindings() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? longitud,  double? ap,  double? transverse,  double? other,  double? volume, @JsonKey(unknownEnumValue: UterusLocalization.central)  UterusLocalization localization, @JsonKey(unknownEnumValue: UterusPosition.avf)  UterusPosition position, @JsonKey(unknownEnumValue: UterusSurface.regular)  UterusSurface surface, @JsonKey(unknownEnumValue: MyometriumType.homogeneous)  MyometriumType myometrium, @JsonKey(unknownEnumValue: EndometriumAspect.proli)  EndometriumAspect endometrium)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UterineFindings() when $default != null:
return $default(_that.longitud,_that.ap,_that.transverse,_that.other,_that.volume,_that.localization,_that.position,_that.surface,_that.myometrium,_that.endometrium);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? longitud,  double? ap,  double? transverse,  double? other,  double? volume, @JsonKey(unknownEnumValue: UterusLocalization.central)  UterusLocalization localization, @JsonKey(unknownEnumValue: UterusPosition.avf)  UterusPosition position, @JsonKey(unknownEnumValue: UterusSurface.regular)  UterusSurface surface, @JsonKey(unknownEnumValue: MyometriumType.homogeneous)  MyometriumType myometrium, @JsonKey(unknownEnumValue: EndometriumAspect.proli)  EndometriumAspect endometrium)  $default,) {final _that = this;
switch (_that) {
case _UterineFindings():
return $default(_that.longitud,_that.ap,_that.transverse,_that.other,_that.volume,_that.localization,_that.position,_that.surface,_that.myometrium,_that.endometrium);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? longitud,  double? ap,  double? transverse,  double? other,  double? volume, @JsonKey(unknownEnumValue: UterusLocalization.central)  UterusLocalization localization, @JsonKey(unknownEnumValue: UterusPosition.avf)  UterusPosition position, @JsonKey(unknownEnumValue: UterusSurface.regular)  UterusSurface surface, @JsonKey(unknownEnumValue: MyometriumType.homogeneous)  MyometriumType myometrium, @JsonKey(unknownEnumValue: EndometriumAspect.proli)  EndometriumAspect endometrium)?  $default,) {final _that = this;
switch (_that) {
case _UterineFindings() when $default != null:
return $default(_that.longitud,_that.ap,_that.transverse,_that.other,_that.volume,_that.localization,_that.position,_that.surface,_that.myometrium,_that.endometrium);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UterineFindings implements UterineFindings {
   _UterineFindings({this.longitud, this.ap, this.transverse, this.other, this.volume, @JsonKey(unknownEnumValue: UterusLocalization.central) this.localization = UterusLocalization.central, @JsonKey(unknownEnumValue: UterusPosition.avf) this.position = UterusPosition.avf, @JsonKey(unknownEnumValue: UterusSurface.regular) this.surface = UterusSurface.regular, @JsonKey(unknownEnumValue: MyometriumType.homogeneous) this.myometrium = MyometriumType.homogeneous, @JsonKey(unknownEnumValue: EndometriumAspect.proli) this.endometrium = EndometriumAspect.proli});
  factory _UterineFindings.fromJson(Map<String, dynamic> json) => _$UterineFindingsFromJson(json);

/// Longitudinal uterine diameter in millimeters; measures the maximum axis of the uterus.
@override  double? longitud;
/// Anteroposterior diameter in mm; reference for shape and size.
@override  double? ap;
/// Transverse diameter in mm; useful for volumetric calculations and morphological alterations.
@override  double? transverse;
/// Auxiliary uterine measurement in mm; may record variants or focal findings.
@override  double? other;
/// Calculated uterine volume in cubic millimeters; evaluates growth, hypertrophy, or reduction.
@override  double? volume;
/// Anatomical localization of the uterus in the pelvis.
@override@JsonKey(unknownEnumValue: UterusLocalization.central)  UterusLocalization localization;
/// Physiological or pathological position of the uterus.
@override@JsonKey(unknownEnumValue: UterusPosition.avf)  UterusPosition position;
/// Appearance of the uterine surface on ultrasound.
@override@JsonKey(unknownEnumValue: UterusSurface.regular)  UterusSurface surface;
/// Type or ultrasound pattern of the observed myometrium.
@override@JsonKey(unknownEnumValue: MyometriumType.homogeneous)  MyometriumType myometrium;
/// Appearance of the endometrium detected in the study.
@override@JsonKey(unknownEnumValue: EndometriumAspect.proli)  EndometriumAspect endometrium;

/// Create a copy of UterineFindings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UterineFindingsCopyWith<_UterineFindings> get copyWith => __$UterineFindingsCopyWithImpl<_UterineFindings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UterineFindingsToJson(this, );
}



@override
String toString() {
  return 'UterineFindings(longitud: $longitud, ap: $ap, transverse: $transverse, other: $other, volume: $volume, localization: $localization, position: $position, surface: $surface, myometrium: $myometrium, endometrium: $endometrium)';
}


}

/// @nodoc
abstract mixin class _$UterineFindingsCopyWith<$Res> implements $UterineFindingsCopyWith<$Res> {
  factory _$UterineFindingsCopyWith(_UterineFindings value, $Res Function(_UterineFindings) _then) = __$UterineFindingsCopyWithImpl;
@override @useResult
$Res call({
 double? longitud, double? ap, double? transverse, double? other, double? volume,@JsonKey(unknownEnumValue: UterusLocalization.central) UterusLocalization localization,@JsonKey(unknownEnumValue: UterusPosition.avf) UterusPosition position,@JsonKey(unknownEnumValue: UterusSurface.regular) UterusSurface surface,@JsonKey(unknownEnumValue: MyometriumType.homogeneous) MyometriumType myometrium,@JsonKey(unknownEnumValue: EndometriumAspect.proli) EndometriumAspect endometrium
});




}
/// @nodoc
class __$UterineFindingsCopyWithImpl<$Res>
    implements _$UterineFindingsCopyWith<$Res> {
  __$UterineFindingsCopyWithImpl(this._self, this._then);

  final _UterineFindings _self;
  final $Res Function(_UterineFindings) _then;

/// Create a copy of UterineFindings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? longitud = freezed,Object? ap = freezed,Object? transverse = freezed,Object? other = freezed,Object? volume = freezed,Object? localization = null,Object? position = null,Object? surface = null,Object? myometrium = null,Object? endometrium = null,}) {
  return _then(_UterineFindings(
longitud: freezed == longitud ? _self.longitud : longitud // ignore: cast_nullable_to_non_nullable
as double?,ap: freezed == ap ? _self.ap : ap // ignore: cast_nullable_to_non_nullable
as double?,transverse: freezed == transverse ? _self.transverse : transverse // ignore: cast_nullable_to_non_nullable
as double?,other: freezed == other ? _self.other : other // ignore: cast_nullable_to_non_nullable
as double?,volume: freezed == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as double?,localization: null == localization ? _self.localization : localization // ignore: cast_nullable_to_non_nullable
as UterusLocalization,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as UterusPosition,surface: null == surface ? _self.surface : surface // ignore: cast_nullable_to_non_nullable
as UterusSurface,myometrium: null == myometrium ? _self.myometrium : myometrium // ignore: cast_nullable_to_non_nullable
as MyometriumType,endometrium: null == endometrium ? _self.endometrium : endometrium // ignore: cast_nullable_to_non_nullable
as EndometriumAspect,
  ));
}


}

// dart format on
