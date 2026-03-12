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

/// [id] Unique identifier (UUID) for the patient.
 String get id;/// [id] Unique identifier (UUID) for the patient.
 set id(String value);/// [name] Full name of the patient.
 String get name;/// [name] Full name of the patient.
 set name(String value);/// [ci] National ID or document number (legacy JSON key `ci`).
 String? get ci;/// [ci] National ID or document number (legacy JSON key `ci`).
 set ci(String? value);/// [age] Age in years.
 int? get age;/// [age] Age in years.
 set age(int? value);/// [bloodGroup] Blood group (e.g. "O+", "A-").
 String? get bloodGroup;/// [bloodGroup] Blood group (e.g. "O+", "A-").
 set bloodGroup(String? value);/// [fur] Date of last menstrual period (LMP). Stored in legacy JSON as `fur`.
 DateTime? get fur;/// [fur] Date of last menstrual period (LMP). Stored in legacy JSON as `fur`.
 set fur(DateTime? value);/// [gesta] Gravida (number of pregnancies).
 String? get gesta;/// [gesta] Gravida (number of pregnancies).
 set gesta(String? value);/// [para] Para (number of births).
 String? get para;/// [para] Para (number of births).
 set para(String? value);/// [cesarea] Cesarean count.
 String? get cesarea;/// [cesarea] Cesarean count.
 set cesarea(String? value);/// [aborto] Abortion count.
 String? get aborto;/// [aborto] Abortion count.
 set aborto(String? value);/// [referencia] Referral source.
 String? get referencia;/// [referencia] Referral source.
 set referencia(String? value);/// [motivo] Chief complaint or reason for consultation.
 String? get motivo;/// [motivo] Chief complaint or reason for consultation.
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
  return 'Patient(id: $id, name: $name, ci: $ci, age: $age, bloodGroup: $bloodGroup, fur: $fur, gesta: $gesta, para: $para, cesarea: $cesarea, aborto: $aborto, referencia: $referencia, motivo: $motivo)';
}


}

/// @nodoc
abstract mixin class $PatientCopyWith<$Res>  {
  factory $PatientCopyWith(Patient value, $Res Function(Patient) _then) = _$PatientCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? ci, int? age, String? bloodGroup, DateTime? fur, String? gesta, String? para, String? cesarea, String? aborto, String? referencia, String? motivo
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? ci = freezed,Object? age = freezed,Object? bloodGroup = freezed,Object? fur = freezed,Object? gesta = freezed,Object? para = freezed,Object? cesarea = freezed,Object? aborto = freezed,Object? referencia = freezed,Object? motivo = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,ci: freezed == ci ? _self.ci : ci // ignore: cast_nullable_to_non_nullable
as String?,age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int?,bloodGroup: freezed == bloodGroup ? _self.bloodGroup : bloodGroup // ignore: cast_nullable_to_non_nullable
as String?,fur: freezed == fur ? _self.fur : fur // ignore: cast_nullable_to_non_nullable
as DateTime?,gesta: freezed == gesta ? _self.gesta : gesta // ignore: cast_nullable_to_non_nullable
as String?,para: freezed == para ? _self.para : para // ignore: cast_nullable_to_non_nullable
as String?,cesarea: freezed == cesarea ? _self.cesarea : cesarea // ignore: cast_nullable_to_non_nullable
as String?,aborto: freezed == aborto ? _self.aborto : aborto // ignore: cast_nullable_to_non_nullable
as String?,referencia: freezed == referencia ? _self.referencia : referencia // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? ci,  int? age,  String? bloodGroup,  DateTime? fur,  String? gesta,  String? para,  String? cesarea,  String? aborto,  String? referencia,  String? motivo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Patient() when $default != null:
return $default(_that.id,_that.name,_that.ci,_that.age,_that.bloodGroup,_that.fur,_that.gesta,_that.para,_that.cesarea,_that.aborto,_that.referencia,_that.motivo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? ci,  int? age,  String? bloodGroup,  DateTime? fur,  String? gesta,  String? para,  String? cesarea,  String? aborto,  String? referencia,  String? motivo)  $default,) {final _that = this;
switch (_that) {
case _Patient():
return $default(_that.id,_that.name,_that.ci,_that.age,_that.bloodGroup,_that.fur,_that.gesta,_that.para,_that.cesarea,_that.aborto,_that.referencia,_that.motivo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? ci,  int? age,  String? bloodGroup,  DateTime? fur,  String? gesta,  String? para,  String? cesarea,  String? aborto,  String? referencia,  String? motivo)?  $default,) {final _that = this;
switch (_that) {
case _Patient() when $default != null:
return $default(_that.id,_that.name,_that.ci,_that.age,_that.bloodGroup,_that.fur,_that.gesta,_that.para,_that.cesarea,_that.aborto,_that.referencia,_that.motivo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Patient implements Patient {
   _Patient({required this.id, required this.name, this.ci, this.age, this.bloodGroup, this.fur, this.gesta, this.para, this.cesarea, this.aborto, this.referencia, this.motivo});
  factory _Patient.fromJson(Map<String, dynamic> json) => _$PatientFromJson(json);

/// [id] Unique identifier (UUID) for the patient.
@override  String id;
/// [name] Full name of the patient.
@override  String name;
/// [ci] National ID or document number (legacy JSON key `ci`).
@override  String? ci;
/// [age] Age in years.
@override  int? age;
/// [bloodGroup] Blood group (e.g. "O+", "A-").
@override  String? bloodGroup;
/// [fur] Date of last menstrual period (LMP). Stored in legacy JSON as `fur`.
@override  DateTime? fur;
/// [gesta] Gravida (number of pregnancies).
@override  String? gesta;
/// [para] Para (number of births).
@override  String? para;
/// [cesarea] Cesarean count.
@override  String? cesarea;
/// [aborto] Abortion count.
@override  String? aborto;
/// [referencia] Referral source.
@override  String? referencia;
/// [motivo] Chief complaint or reason for consultation.
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
  return 'Patient(id: $id, name: $name, ci: $ci, age: $age, bloodGroup: $bloodGroup, fur: $fur, gesta: $gesta, para: $para, cesarea: $cesarea, aborto: $aborto, referencia: $referencia, motivo: $motivo)';
}


}

/// @nodoc
abstract mixin class _$PatientCopyWith<$Res> implements $PatientCopyWith<$Res> {
  factory _$PatientCopyWith(_Patient value, $Res Function(_Patient) _then) = __$PatientCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? ci, int? age, String? bloodGroup, DateTime? fur, String? gesta, String? para, String? cesarea, String? aborto, String? referencia, String? motivo
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? ci = freezed,Object? age = freezed,Object? bloodGroup = freezed,Object? fur = freezed,Object? gesta = freezed,Object? para = freezed,Object? cesarea = freezed,Object? aborto = freezed,Object? referencia = freezed,Object? motivo = freezed,}) {
  return _then(_Patient(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,ci: freezed == ci ? _self.ci : ci // ignore: cast_nullable_to_non_nullable
as String?,age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int?,bloodGroup: freezed == bloodGroup ? _self.bloodGroup : bloodGroup // ignore: cast_nullable_to_non_nullable
as String?,fur: freezed == fur ? _self.fur : fur // ignore: cast_nullable_to_non_nullable
as DateTime?,gesta: freezed == gesta ? _self.gesta : gesta // ignore: cast_nullable_to_non_nullable
as String?,para: freezed == para ? _self.para : para // ignore: cast_nullable_to_non_nullable
as String?,cesarea: freezed == cesarea ? _self.cesarea : cesarea // ignore: cast_nullable_to_non_nullable
as String?,aborto: freezed == aborto ? _self.aborto : aborto // ignore: cast_nullable_to_non_nullable
as String?,referencia: freezed == referencia ? _self.referencia : referencia // ignore: cast_nullable_to_non_nullable
as String?,motivo: freezed == motivo ? _self.motivo : motivo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$StudyProtocol {

 StudyType get type; set type(StudyType value); String? get equipment; set equipment(String? value);
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
 StudyType type, String? equipment
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( StudyType type,  String? equipment)?  $default,{required TResult orElse(),}) {final _that = this;
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( StudyType type,  String? equipment)  $default,) {final _that = this;
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( StudyType type,  String? equipment)?  $default,) {final _that = this;
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
   _StudyProtocol({required this.type, this.equipment});
  factory _StudyProtocol.fromJson(Map<String, dynamic> json) => _$StudyProtocolFromJson(json);

@override  StudyType type;
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
 StudyType type, String? equipment
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

 double? get ap; set ap(double? value); double? get tr; set tr(double? value); double? get lo; set lo(double? value);
/// Create a copy of OvaryMeasurement
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OvaryMeasurementCopyWith<OvaryMeasurement> get copyWith => _$OvaryMeasurementCopyWithImpl<OvaryMeasurement>(this as OvaryMeasurement, _$identity);

  /// Serializes this OvaryMeasurement to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'OvaryMeasurement(ap: $ap, tr: $tr, lo: $lo)';
}


}

/// @nodoc
abstract mixin class $OvaryMeasurementCopyWith<$Res>  {
  factory $OvaryMeasurementCopyWith(OvaryMeasurement value, $Res Function(OvaryMeasurement) _then) = _$OvaryMeasurementCopyWithImpl;
@useResult
$Res call({
 double? ap, double? tr, double? lo
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
@pragma('vm:prefer-inline') @override $Res call({Object? ap = freezed,Object? tr = freezed,Object? lo = freezed,}) {
  return _then(_self.copyWith(
ap: freezed == ap ? _self.ap : ap // ignore: cast_nullable_to_non_nullable
as double?,tr: freezed == tr ? _self.tr : tr // ignore: cast_nullable_to_non_nullable
as double?,lo: freezed == lo ? _self.lo : lo // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? ap,  double? tr,  double? lo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OvaryMeasurement() when $default != null:
return $default(_that.ap,_that.tr,_that.lo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? ap,  double? tr,  double? lo)  $default,) {final _that = this;
switch (_that) {
case _OvaryMeasurement():
return $default(_that.ap,_that.tr,_that.lo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? ap,  double? tr,  double? lo)?  $default,) {final _that = this;
switch (_that) {
case _OvaryMeasurement() when $default != null:
return $default(_that.ap,_that.tr,_that.lo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OvaryMeasurement extends OvaryMeasurement {
   _OvaryMeasurement({this.ap, this.tr, this.lo}): super._();
  factory _OvaryMeasurement.fromJson(Map<String, dynamic> json) => _$OvaryMeasurementFromJson(json);

@override  double? ap;
@override  double? tr;
@override  double? lo;

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
  return 'OvaryMeasurement(ap: $ap, tr: $tr, lo: $lo)';
}


}

/// @nodoc
abstract mixin class _$OvaryMeasurementCopyWith<$Res> implements $OvaryMeasurementCopyWith<$Res> {
  factory _$OvaryMeasurementCopyWith(_OvaryMeasurement value, $Res Function(_OvaryMeasurement) _then) = __$OvaryMeasurementCopyWithImpl;
@override @useResult
$Res call({
 double? ap, double? tr, double? lo
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
@override @pragma('vm:prefer-inline') $Res call({Object? ap = freezed,Object? tr = freezed,Object? lo = freezed,}) {
  return _then(_OvaryMeasurement(
ap: freezed == ap ? _self.ap : ap // ignore: cast_nullable_to_non_nullable
as double?,tr: freezed == tr ? _self.tr : tr // ignore: cast_nullable_to_non_nullable
as double?,lo: freezed == lo ? _self.lo : lo // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$Ovary {

 OvarySide get side; set side(OvarySide value); OvaryType get type; set type(OvaryType value); OvaryMeasurement? get measures; set measures(OvaryMeasurement? value); String? get notes; set notes(String? value);
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
 OvarySide side, OvaryType type, OvaryMeasurement? measures, String? notes
});


$OvaryMeasurementCopyWith<$Res>? get measures;

}
/// @nodoc
class _$OvaryCopyWithImpl<$Res>
    implements $OvaryCopyWith<$Res> {
  _$OvaryCopyWithImpl(this._self, this._then);

  final Ovary _self;
  final $Res Function(Ovary) _then;

/// Create a copy of Ovary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? side = null,Object? type = null,Object? measures = freezed,Object? notes = freezed,}) {
  return _then(_self.copyWith(
side: null == side ? _self.side : side // ignore: cast_nullable_to_non_nullable
as OvarySide,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as OvaryType,measures: freezed == measures ? _self.measures : measures // ignore: cast_nullable_to_non_nullable
as OvaryMeasurement?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Ovary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OvaryMeasurementCopyWith<$Res>? get measures {
    if (_self.measures == null) {
    return null;
  }

  return $OvaryMeasurementCopyWith<$Res>(_self.measures!, (value) {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( OvarySide side,  OvaryType type,  OvaryMeasurement? measures,  String? notes)?  $default,{required TResult orElse(),}) {final _that = this;
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( OvarySide side,  OvaryType type,  OvaryMeasurement? measures,  String? notes)  $default,) {final _that = this;
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( OvarySide side,  OvaryType type,  OvaryMeasurement? measures,  String? notes)?  $default,) {final _that = this;
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
   _Ovary({required this.side, required this.type, this.measures, this.notes});
  factory _Ovary.fromJson(Map<String, dynamic> json) => _$OvaryFromJson(json);

@override  OvarySide side;
@override  OvaryType type;
@override  OvaryMeasurement? measures;
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
 OvarySide side, OvaryType type, OvaryMeasurement? measures, String? notes
});


@override $OvaryMeasurementCopyWith<$Res>? get measures;

}
/// @nodoc
class __$OvaryCopyWithImpl<$Res>
    implements _$OvaryCopyWith<$Res> {
  __$OvaryCopyWithImpl(this._self, this._then);

  final _Ovary _self;
  final $Res Function(_Ovary) _then;

/// Create a copy of Ovary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? side = null,Object? type = null,Object? measures = freezed,Object? notes = freezed,}) {
  return _then(_Ovary(
side: null == side ? _self.side : side // ignore: cast_nullable_to_non_nullable
as OvarySide,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as OvaryType,measures: freezed == measures ? _self.measures : measures // ignore: cast_nullable_to_non_nullable
as OvaryMeasurement?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Ovary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OvaryMeasurementCopyWith<$Res>? get measures {
    if (_self.measures == null) {
    return null;
  }

  return $OvaryMeasurementCopyWith<$Res>(_self.measures!, (value) {
    return _then(_self.copyWith(measures: value));
  });
}
}


/// @nodoc
mixin _$Bladder {

 Regularity get regularity; set regularity(Regularity value); double? get wallMm; set wallMm(double? value); DouglasPouch get douglasPouch; set douglasPouch(DouglasPouch value); BladderDiagnosis? get diagnosis; set diagnosis(BladderDiagnosis? value); OvaryDiagnosis? get ovaryDiagnosis; set ovaryDiagnosis(OvaryDiagnosis? value); String? get conclusion; set conclusion(String? value);
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

@override  Regularity regularity;
@override  double? wallMm;
@override  DouglasPouch douglasPouch;
@override  BladderDiagnosis? diagnosis;
@override  OvaryDiagnosis? ovaryDiagnosis;
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

 bool get has; set has(bool value); String? get description; set description(String? value);
/// Create a copy of Nodules
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NodulesCopyWith<Nodules> get copyWith => _$NodulesCopyWithImpl<Nodules>(this as Nodules, _$identity);

  /// Serializes this Nodules to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'Nodules(has: $has, description: $description)';
}


}

/// @nodoc
abstract mixin class $NodulesCopyWith<$Res>  {
  factory $NodulesCopyWith(Nodules value, $Res Function(Nodules) _then) = _$NodulesCopyWithImpl;
@useResult
$Res call({
 bool has, String? description
});




}
/// @nodoc
class _$NodulesCopyWithImpl<$Res>
    implements $NodulesCopyWith<$Res> {
  _$NodulesCopyWithImpl(this._self, this._then);

  final Nodules _self;
  final $Res Function(Nodules) _then;

/// Create a copy of Nodules
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? has = null,Object? description = freezed,}) {
  return _then(_self.copyWith(
has: null == has ? _self.has : has // ignore: cast_nullable_to_non_nullable
as bool,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool has,  String? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Nodules() when $default != null:
return $default(_that.has,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool has,  String? description)  $default,) {final _that = this;
switch (_that) {
case _Nodules():
return $default(_that.has,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool has,  String? description)?  $default,) {final _that = this;
switch (_that) {
case _Nodules() when $default != null:
return $default(_that.has,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Nodules implements Nodules {
   _Nodules({required this.has, this.description});
  factory _Nodules.fromJson(Map<String, dynamic> json) => _$NodulesFromJson(json);

@override  bool has;
@override  String? description;

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
  return 'Nodules(has: $has, description: $description)';
}


}

/// @nodoc
abstract mixin class _$NodulesCopyWith<$Res> implements $NodulesCopyWith<$Res> {
  factory _$NodulesCopyWith(_Nodules value, $Res Function(_Nodules) _then) = __$NodulesCopyWithImpl;
@override @useResult
$Res call({
 bool has, String? description
});




}
/// @nodoc
class __$NodulesCopyWithImpl<$Res>
    implements _$NodulesCopyWith<$Res> {
  __$NodulesCopyWithImpl(this._self, this._then);

  final _Nodules _self;
  final $Res Function(_Nodules) _then;

/// Create a copy of Nodules
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? has = null,Object? description = freezed,}) {
  return _then(_Nodules(
has: null == has ? _self.has : has // ignore: cast_nullable_to_non_nullable
as bool,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Findings {

 String? get uterusDiagnosis; set uterusDiagnosis(String? value); String? get conclusion; set conclusion(String? value);
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

@override  String? uterusDiagnosis;
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

 String get id; DateTime get createdAt; Patient get patient; StudyProtocol get protocol; Findings get findings; String? get doctor; String? get clinic; Map<String, dynamic>? get meta;
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

@override final  String id;
@override final  DateTime createdAt;
@override final  Patient patient;
@override final  StudyProtocol protocol;
@override final  Findings findings;
@override final  String? doctor;
@override final  String? clinic;
 final  Map<String, dynamic>? _meta;
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

 String? get id; set id(String? value); DateTime? get createdAt; set createdAt(DateTime? value); Patient? get patient; set patient(Patient? value); StudyProtocol? get protocol; set protocol(StudyProtocol? value); Findings? get findings; set findings(Findings? value); Bladder? get bladder; set bladder(Bladder? value); Ovary? get rightOvary; set rightOvary(Ovary? value); Ovary? get leftOvary; set leftOvary(Ovary? value); String? get doctor; set doctor(String? value); String? get clinic; set clinic(String? value); Map<String, dynamic>? get meta; set meta(Map<String, dynamic>? value);
/// Create a copy of ReportDraft
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportDraftCopyWith<ReportDraft> get copyWith => _$ReportDraftCopyWithImpl<ReportDraft>(this as ReportDraft, _$identity);

  /// Serializes this ReportDraft to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'ReportDraft(id: $id, createdAt: $createdAt, patient: $patient, protocol: $protocol, findings: $findings, bladder: $bladder, rightOvary: $rightOvary, leftOvary: $leftOvary, doctor: $doctor, clinic: $clinic, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $ReportDraftCopyWith<$Res>  {
  factory $ReportDraftCopyWith(ReportDraft value, $Res Function(ReportDraft) _then) = _$ReportDraftCopyWithImpl;
@useResult
$Res call({
 String? id, DateTime? createdAt, Patient? patient, StudyProtocol? protocol, Findings? findings, Bladder? bladder, Ovary? rightOvary, Ovary? leftOvary, String? doctor, String? clinic, Map<String, dynamic>? meta
});


$PatientCopyWith<$Res>? get patient;$StudyProtocolCopyWith<$Res>? get protocol;$FindingsCopyWith<$Res>? get findings;$BladderCopyWith<$Res>? get bladder;$OvaryCopyWith<$Res>? get rightOvary;$OvaryCopyWith<$Res>? get leftOvary;

}
/// @nodoc
class _$ReportDraftCopyWithImpl<$Res>
    implements $ReportDraftCopyWith<$Res> {
  _$ReportDraftCopyWithImpl(this._self, this._then);

  final ReportDraft _self;
  final $Res Function(ReportDraft) _then;

/// Create a copy of ReportDraft
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? createdAt = freezed,Object? patient = freezed,Object? protocol = freezed,Object? findings = freezed,Object? bladder = freezed,Object? rightOvary = freezed,Object? leftOvary = freezed,Object? doctor = freezed,Object? clinic = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,patient: freezed == patient ? _self.patient : patient // ignore: cast_nullable_to_non_nullable
as Patient?,protocol: freezed == protocol ? _self.protocol : protocol // ignore: cast_nullable_to_non_nullable
as StudyProtocol?,findings: freezed == findings ? _self.findings : findings // ignore: cast_nullable_to_non_nullable
as Findings?,bladder: freezed == bladder ? _self.bladder : bladder // ignore: cast_nullable_to_non_nullable
as Bladder?,rightOvary: freezed == rightOvary ? _self.rightOvary : rightOvary // ignore: cast_nullable_to_non_nullable
as Ovary?,leftOvary: freezed == leftOvary ? _self.leftOvary : leftOvary // ignore: cast_nullable_to_non_nullable
as Ovary?,doctor: freezed == doctor ? _self.doctor : doctor // ignore: cast_nullable_to_non_nullable
as String?,clinic: freezed == clinic ? _self.clinic : clinic // ignore: cast_nullable_to_non_nullable
as String?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
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
$OvaryCopyWith<$Res>? get rightOvary {
    if (_self.rightOvary == null) {
    return null;
  }

  return $OvaryCopyWith<$Res>(_self.rightOvary!, (value) {
    return _then(_self.copyWith(rightOvary: value));
  });
}/// Create a copy of ReportDraft
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OvaryCopyWith<$Res>? get leftOvary {
    if (_self.leftOvary == null) {
    return null;
  }

  return $OvaryCopyWith<$Res>(_self.leftOvary!, (value) {
    return _then(_self.copyWith(leftOvary: value));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  DateTime? createdAt,  Patient? patient,  StudyProtocol? protocol,  Findings? findings,  Bladder? bladder,  Ovary? rightOvary,  Ovary? leftOvary,  String? doctor,  String? clinic,  Map<String, dynamic>? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportDraft() when $default != null:
return $default(_that.id,_that.createdAt,_that.patient,_that.protocol,_that.findings,_that.bladder,_that.rightOvary,_that.leftOvary,_that.doctor,_that.clinic,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  DateTime? createdAt,  Patient? patient,  StudyProtocol? protocol,  Findings? findings,  Bladder? bladder,  Ovary? rightOvary,  Ovary? leftOvary,  String? doctor,  String? clinic,  Map<String, dynamic>? meta)  $default,) {final _that = this;
switch (_that) {
case _ReportDraft():
return $default(_that.id,_that.createdAt,_that.patient,_that.protocol,_that.findings,_that.bladder,_that.rightOvary,_that.leftOvary,_that.doctor,_that.clinic,_that.meta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  DateTime? createdAt,  Patient? patient,  StudyProtocol? protocol,  Findings? findings,  Bladder? bladder,  Ovary? rightOvary,  Ovary? leftOvary,  String? doctor,  String? clinic,  Map<String, dynamic>? meta)?  $default,) {final _that = this;
switch (_that) {
case _ReportDraft() when $default != null:
return $default(_that.id,_that.createdAt,_that.patient,_that.protocol,_that.findings,_that.bladder,_that.rightOvary,_that.leftOvary,_that.doctor,_that.clinic,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReportDraft implements ReportDraft {
   _ReportDraft({this.id, this.createdAt, this.patient, this.protocol, this.findings, this.bladder, this.rightOvary, this.leftOvary, this.doctor, this.clinic, this.meta});
  factory _ReportDraft.fromJson(Map<String, dynamic> json) => _$ReportDraftFromJson(json);

@override  String? id;
@override  DateTime? createdAt;
@override  Patient? patient;
@override  StudyProtocol? protocol;
@override  Findings? findings;
@override  Bladder? bladder;
@override  Ovary? rightOvary;
@override  Ovary? leftOvary;
@override  String? doctor;
@override  String? clinic;
@override  Map<String, dynamic>? meta;

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
  return 'ReportDraft(id: $id, createdAt: $createdAt, patient: $patient, protocol: $protocol, findings: $findings, bladder: $bladder, rightOvary: $rightOvary, leftOvary: $leftOvary, doctor: $doctor, clinic: $clinic, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$ReportDraftCopyWith<$Res> implements $ReportDraftCopyWith<$Res> {
  factory _$ReportDraftCopyWith(_ReportDraft value, $Res Function(_ReportDraft) _then) = __$ReportDraftCopyWithImpl;
@override @useResult
$Res call({
 String? id, DateTime? createdAt, Patient? patient, StudyProtocol? protocol, Findings? findings, Bladder? bladder, Ovary? rightOvary, Ovary? leftOvary, String? doctor, String? clinic, Map<String, dynamic>? meta
});


@override $PatientCopyWith<$Res>? get patient;@override $StudyProtocolCopyWith<$Res>? get protocol;@override $FindingsCopyWith<$Res>? get findings;@override $BladderCopyWith<$Res>? get bladder;@override $OvaryCopyWith<$Res>? get rightOvary;@override $OvaryCopyWith<$Res>? get leftOvary;

}
/// @nodoc
class __$ReportDraftCopyWithImpl<$Res>
    implements _$ReportDraftCopyWith<$Res> {
  __$ReportDraftCopyWithImpl(this._self, this._then);

  final _ReportDraft _self;
  final $Res Function(_ReportDraft) _then;

/// Create a copy of ReportDraft
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? createdAt = freezed,Object? patient = freezed,Object? protocol = freezed,Object? findings = freezed,Object? bladder = freezed,Object? rightOvary = freezed,Object? leftOvary = freezed,Object? doctor = freezed,Object? clinic = freezed,Object? meta = freezed,}) {
  return _then(_ReportDraft(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,patient: freezed == patient ? _self.patient : patient // ignore: cast_nullable_to_non_nullable
as Patient?,protocol: freezed == protocol ? _self.protocol : protocol // ignore: cast_nullable_to_non_nullable
as StudyProtocol?,findings: freezed == findings ? _self.findings : findings // ignore: cast_nullable_to_non_nullable
as Findings?,bladder: freezed == bladder ? _self.bladder : bladder // ignore: cast_nullable_to_non_nullable
as Bladder?,rightOvary: freezed == rightOvary ? _self.rightOvary : rightOvary // ignore: cast_nullable_to_non_nullable
as Ovary?,leftOvary: freezed == leftOvary ? _self.leftOvary : leftOvary // ignore: cast_nullable_to_non_nullable
as Ovary?,doctor: freezed == doctor ? _self.doctor : doctor // ignore: cast_nullable_to_non_nullable
as String?,clinic: freezed == clinic ? _self.clinic : clinic // ignore: cast_nullable_to_non_nullable
as String?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
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
$OvaryCopyWith<$Res>? get rightOvary {
    if (_self.rightOvary == null) {
    return null;
  }

  return $OvaryCopyWith<$Res>(_self.rightOvary!, (value) {
    return _then(_self.copyWith(rightOvary: value));
  });
}/// Create a copy of ReportDraft
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OvaryCopyWith<$Res>? get leftOvary {
    if (_self.leftOvary == null) {
    return null;
  }

  return $OvaryCopyWith<$Res>(_self.leftOvary!, (value) {
    return _then(_self.copyWith(leftOvary: value));
  });
}
}

// dart format on
