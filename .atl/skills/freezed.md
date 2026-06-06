# Freezed Skill Documentation

This skill covers all conventions for using [Freezed](https://pub.dev/packages/freezed) with Dart 3 and Freezed 3+, including: required docStrings, models, enums, custom converters, directory structuring, additive-only evolution, ambiguity handling, and modern best practices. Examples are concise and self-contained.

---

## 1. Directory Structure

Organize code by feature or domain, typically under `lib/`. Public Freezed models should be grouped under `/models` at the feature or root level.

**Sample of structure:**
```
lib/
  models/
    enum/
      status.dart
      type.dart
    src/
      user.dart
      command.dart
    models.dart

```
*Never* put Freezed models in barrel files that cause circular imports. Prefer fine-grained file organization.

---

## 2. Model Declarations

- Every public model **MUST** use Freezed (`@freezed`) and include the `part '../models.dart'`
- **Always** annotate the class and all fields with a clear docString.

```dart
/// Represents an app user with minimal profile info.
@freezed
class User with _$User {
  /// Default constructor.
  const factory User({
    /// [id] Unique user identifier (UUID).
    required String id,
    /// [email]  address of the user.
    required String email,
    /// [name] is the name to use de user
    required String name,
    /// [avatarUrl] is the image/icon/etc 
    String? avatarUrl,
  }) = _User;

  /// JSON constructor for serialization.
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
```
---
## 3. Policy for Mutable Models and `@unfreezed` Usage

- **Always ask the developer:** Before modeling a class, explicitly ask if the data structure needs to be mutable.
  - If the answer is "no", use a standard Freezed class (immutable by default).
  - If "yes", proceed with `@unfreezed` and apply the following rules.

- **Rules for using `@unfreezed`:**
  - The class **must** also be declared as `sealed` or `abstract`.
  - The `factory` constructor must **not** use `const` (i.e. write just `factory`, not `const factory`).
  - All docString, naming, and structuring conventions remain required.
  - Only use `@unfreezed` when immutability cannot serve the business need.

- **Example:** Mutable model with `@unfreezed` (safe pattern):

```dart
/// Mutable model example (use only when justification exists).
@unfreezed
sealed class MutableModel with _$MutableModel {
  factory MutableModel({
    /// Unique identifier.
    required String id,
    /// Optional property.
    String? label,
  }) = _MutableModel;
}
```

> In summary: Always clarify with the developer if mutability is required. Only use `@unfreezed` with `sealed` or `abstract`, never use `const factory`, and default to immutable (standard Freezed) models whenever possible.


---

## 4. Enum Conventions

- Use `@JsonEnum(alwaysCreate: true)` for **all** externally visible enums. **NOTE**: `@FreezedEnum` does NOT exist — it's not a real annotation. The correct one is `@JsonEnum(alwaysCreate: true)` from `json_annotation`.
- Always document the enum and all values; use `@JsonValue` for wire-safe serialization.

```dart
/// User roles in the system.
@JsonEnum(alwaysCreate: true)
enum UserRole with _$UserRole {
  /// Unknown role (default/fallback).
  @JsonValue('unknown')
  unknown,

  /// App administrator.
  @JsonValue('admin')
  admin,

  /// Ordinary user.
  @JsonValue('user')
  user,
}
```

---

## 5. Converters

For non-primitive or custom types (e.g., nested models, custom DateTime formats):

- Implement a `JsonConverter`.
- Document every converter.
- Place converters in `converters/` subfolder.

**Example: DateTime w/ISO8601**
```dart
/// Converts DateTime to/from ISO8601 string.
class DateTimeIsoConverter implements JsonConverter<DateTime, String> {
  const DateTimeIsoConverter();
  @override
  DateTime fromJson(String json) => DateTime.parse(json);
  @override
  String toJson(DateTime object) => object.toIso8601String();
}
```

**Usage in a model:**
```dart
/// User settings.
@freezed
class Settings with _$Settings {
  const factory Settings({
    /// [updatedAt] Timestamp when settings were updated.
    @DateTimeIsoConverter() required DateTime updatedAt,
  }) = _Settings;

  factory Settings.fromJson(Map<String, dynamic> json) => _$SettingsFromJson(json);
}
```

---

## 6. Required docStrings

- Every model class, field, enum, and enum value **must** have a docString.
- DocStrings are always triple-slash (`///`) comments.
- Be concise, business-relevant, and unambiguous.

---

## 7. Additive-Only Model Evolution

- Evolve models **only by adding** (fields, enum values); never remove/retype/rename existing fields.
- To deprecate: add a docString noting `@deprecated` and document replacement.

**Example:**
```dart
/// @deprecated Use `username` instead.
@Deprecated('Use `username` instead.')
String? oldUserName,
```

---

## 8. Ambiguity Handling

- Make all "optional" or possibly-missing fields nullable (`Type?`).
- For default values, set explicitly in factory constructor, e.g. `@Default([]) List<String> tags`.
- Always document "nullable if absent" or "nullable for future-proofing" contract.

---

## 9. Best Practices (Dart 3 / Freezed 3+)

- Use `@Default` for default values—not constructor `=` for compatibility with serialization.
- Avoid dynamic types; only use `dynamic` in truly polymorphic contexts.
- Favor sealed unions for variant models.
- Always run `dart pub run build_runner build` after changes.
- Regenerate `.freezed.dart` and `.g.dart` files as needed, never hand-edit.
- Add `toJson`/`fromJson` for all wire types (API, storage).

---

## 10. Example: Sealed Union

```dart
/// State for user authentication.
@freezed
class AuthState with _$AuthState {
  /// Not authenticated.
  const factory AuthState.unsigned() = Unsigned;

  /// User is signed in.
  const factory AuthState.signed(User user) = Signed;

  /// Authentication error state.
  const factory AuthState.error(String message) = Error;
}
```

---

## 11. Example: Enum + Converter + Nullable

```dart
/// Theme preference.
enum AppTheme with _$AppTheme {
  /// Uses device setting.
  @JsonValue('system')
  system,

  /// Light theme.
  @JsonValue('light')
  light,

  /// Dark theme.
  @JsonValue('dark')
  dark,
}

/// Converts [AppTheme] to/from string.
class AppThemeConverter implements JsonConverter<AppTheme?, String?> {
  const AppThemeConverter();
  @override
  AppTheme? fromJson(String? json) => 
      _$AppThemeEnumMap.entries.singleWhere(
        (e) => e.value == json,
        orElse: () => MapEntry(AppTheme.system, 'system'),
      ).key;
  @override
  String? toJson(AppTheme? object) => object == null ? null : _$AppThemeEnumMap[object];
}

// In your model:
@AppThemeConverter() AppTheme? preferredTheme,
```
---

## 12. Other Minor Conventions

- CamelCase for field names, PascalCase for type names.
- Place all converters, enums, and models in folders
- No business logic/methods in Freezed models (keep pure data).
- Use `required` everywhere unless truly optional.

---


# References

- [Freezed package](https://pub.dev/packages/freezed)
- [Freezed Wiki](https://github.com/rrousselGit/freezed/wiki)
- [JsonSerializable](https://pub.dev/packages/json_serializable)


Follow the SDD orchestrator workflow for starting a new change named "Tengo un formulario que tengo que agregar. Consta de un formulario de un Usuario que tiene una mascota. el usuario tendra una lista de mascota y datos comunes. y la mascota tambien tendra datos comunes pero solo atajaremos 3 razas, Yorkie, Poddle y chau chau. Me puedes hacer las clases correspondiente en freezed?".