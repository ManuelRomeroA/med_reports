---
name: freezed
description: >
  Defines project-wide conventions for generating Dart Freezed/unfreezed models, enums, and converters for Flutter. All generated artifacts must strictly adhere to field-level doc comment and structure conventions, ensuring consistency and code quality.
license: MIT
author: Manuel Romero
version: "1.2"
updated: 2026-03
---
# Freezed Skill — Conventions and Best Practices
This skill defines mandatory conventions for generating Freezed/unfreezed Dart models, enums, and value converters.  
It must be referenced by any code generator, subagent, or contributor handling these artifacts.
---
## Usage
- **Directory structure:** Models and enums must reside in `lib/models/`; converters in `lib/models/converters/`.
- **Dart directives:** Always use `part`, `part of`, and `library` as appropriate. Notify on inconsistencies; never auto-modify without explicit permission.
- **Additive changes only:** Never overwrite existing functioning code or artifacts unless the user consents.
- **Converters:** Only generate for types not handled by Freezed/json_serializable. For Freezed/unfreezed models, rely solely on package code generation.
- **Validation:** On generation/init, always validate the target folders. Warn if non-standard layouts are found; scripts or fixes can be suggested but never auto-applied.
- **Ambiguity handling:** If unusual patterns (custom annotations, mixed conventions, etc.) are detected, warn—never guess or auto-fix without user review.
---
## Purpose
To standardize and enforce a consistent, readable, and maintainable style for all Freezed/unfreezed models, enums, and converters,  
so that generated Dart code is always production-ready, self-documented, and resilient to future changes.
---
## Conventions
- **Class/Enum/Converter docstrings:** Always place a 1-2 line DartDoc (`///`) above each class, enum, or converter definition—explaining briefly what it is.
- **Field documentation:** Every field in a Freezed factory must have a single-line `///` DartDoc immediately above the field.
    - **Do not use:** single block DartDocs above the factory with docs for all fields.
    - **Do not use:** inline `//` comments for field documentation.
- **Freezed class:** Use `sealed` keyword and private unnamed constructor for full Dart 3 compatibility.
- **Enums:** Always include an `unknown` value for forward compatibility. Handle deserialization with `@JsonKey(unknownEnumValue: EnumType.unknown)`.
- **Converters:** Place all in `lib/models/converters/`; never overwrite without confirmation.
---
## Workflow (Summary)
1. Validate target directories and naming.
2. On generation request, prepare only "additive" changes (never remove/modify functioning code).
3. All artifacts (class, fields, enums, converters) require full DartDoc as described.
4. Prompt user on any nonstandard scenario or ambiguity.
5. Update central barrel file (e.g. `models.dart`) when adding models/enums/converters.
6. Warn and suggest fixes for missing `unknown` enum members or documentation gaps.
7. Document all architectural and convention changes in project memory.
---
## Examples
### ✅ Freezed Model (Best Practice, Dart 3+)
```dart
@freezed
sealed class User with _$User {
  /// Transport company user model.
  const User._();
  const factory User({
    /// CNPJ identifier
    String? id,
    /// Transport company name
    String? name,
    /// Full address
    String? address,
    /// State registration number
    String? stateRegistration,
  }) = _User;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
⛔️ Anti-example: Docblock instead of per-field
/// Person data, with docs for all fields in a block.
/// name: person's name
/// age: person's age
class Person {
  final String name;
  final int age;
  Person({required this.name, required this.age});
}
⛔️ Anti-example: Inline "field" comment
class Person {
  final String name; // Name
  final int age; // Age
  Person({required this.name, required this.age});
}
⛔️ Anti-example: Missing "sealed" (Dart 3+)

@freezed
class Person with _$Person { ... }
✅ Enum With "unknown" Value
/// Status of a command execution.
@JsonEnum(alwaysCreate: true)
enum CommandStatus {
  /// Pending
  @JsonValue('PENDING')
  pending,
  /// Failed
  @JsonValue('FAILED')
  failed,
  /// Succeeded
  @JsonValue('SUCCESS')
  success,
  /// Unknown status (for forward compatibility)
  @JsonValue('UNKNOWN')
  unknown;
  @override
  String toString() => _$CommandStatusEnumMap[this] ?? 'UNKNOWN';
}

✅ Enum Use in Freezed Model
@freezed
sealed class CommandExecution with _$CommandExecution {
  /// Represents a command execution.
  const CommandExecution._();
  const factory CommandExecution({
    /// ATS command execution status.
    @JsonKey(unknownEnumValue: CommandStatus.unknown)
    @Default(CommandStatus.unknown)
    CommandStatus status,
  }) = _CommandExecution;
  factory CommandExecution.fromJson(Map<String, dynamic> json) => _$CommandExecutionFromJson(json);
}

✅ Converter Example
/// Converts between a [DateTime] and a Unix timestamp (seconds).
class TimestampOrNullConverter implements JsonConverter<DateTime?, num?> {
  /// Creates a new TimestampOrNullConverter.
  const TimestampOrNullConverter();
  @override
  DateTime? fromJson(num? json) {
    if (json == null) return null;
    return DateTime.fromMillisecondsSinceEpoch((json * 1000).toInt());
  }
  @override
  num? toJson(DateTime? object) {
    if (object == null) return null;
    return object.millisecondsSinceEpoch / 1000;
  }
}
Use in model:
/// Time the entity was created.
@TimestampOrNullConverter()
DateTime? createdAt,
---
## Rules
- All artifacts must follow: brief class docstring above, `///` above every factory field (never mass DocBlocks).
- "sealed" is required on all Freezed models (unless justified).
- Only generate on explicit request.
- Prevent duplicates; always check for existing files first.
- Add new entries strictly additively; never modify or remove others' work automatically.
- Prompt and warn on missing docstrings, sealed, unknown enum member, or abnormal structure.
- All team and agent learnings related to these conventions should be documented in persistent memory.
---
Last updated: March 2026. Strict docstring and sealed enforcement active.
---