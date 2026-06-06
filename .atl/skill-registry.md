---
# Skill Registry
As your FIRST step before starting any work, identify and load skills relevant to your task from this registry. This file lists all reusable project skills. All agents, generators, and contributors MUST consult the indicated skills before producing, reviewing, or validating code artifacts.

## Project Skills

| Skill Name | Trigger | Path | Owner | Version |
|------------|---------|------|-------|---------|
| freezed | Always consult before generating, reviewing, or validating any Dart Freezed/unfreezed model, enum, or converter. Mandatory for sdd-design and any workflow or contributor affecting Dart models. | .atl/skills/freezed.md | Manuel Romero | 1.2 |

## User Skills

| Skill Name | Trigger | Path |
|------------|---------|------|
| branch-pr | When creating a pull request, opening a PR, or preparing changes for review. | /Users/manuelromero/.claude/skills/branch-pr/SKILL.md |
| go-testing | When writing Go tests, using teatest, or adding test coverage. | /Users/manuelromero/.claude/skills/go-testing/SKILL.md |
| issue-creation | When creating a GitHub issue, reporting a bug, or requesting a feature. | /Users/manuelromero/.claude/skills/issue-creation/SKILL.md |
| judgment-day | When user says "judgment day", "dual review", "doble review", "juzgar". | /Users/manuelromero/.claude/skills/judgment-day/SKILL.md |
| skill-creator | When user asks to create a new skill or document patterns for AI. | /Users/manuelromero/.claude/skills/skill-creator/SKILL.md |
| sdd-explore | When the orchestrator launches you to investigate a feature or clarify requirements. | /Users/manuelromero/.claude/skills/sdd-explore/SKILL.md |
| sdd-propose | When the orchestrator launches you to create or update a change proposal. | /Users/manuelromero/.claude/skills/sdd-propose/SKILL.md |
| sdd-spec | When the orchestrator launches you to write or update specs. | /Users/manuelromero/.claude/skills/sdd-spec/SKILL.md |
| sdd-design | When the orchestrator launches you to write or update the technical design. | /Users/manuelromero/.claude/skills/sdd-design/SKILL.md |
| sdd-tasks | When the orchestrator launches you to break down a change into tasks. | /Users/manuelromero/.claude/skills/sdd-tasks/SKILL.md |
| sdd-apply | When the orchestrator launches you to implement tasks. | /Users/manuelromero/.claude/skills/sdd-apply/SKILL.md |
| sdd-verify | When the orchestrator launches you to verify implementation against specs. | /Users/manuelromero/.claude/skills/sdd-verify/SKILL.md |
| sdd-archive | When the orchestrator launches you to close and archive a change. | /Users/manuelromero/.claude/skills/sdd-archive/SKILL.md |

## Compact Rules

### freezed (project skill — ALWAYS apply for Dart models)
- Every public model MUST use `@freezed` (or `@unfreezed` if mutable — ask developer first).
- Every class, field, enum, and enum value MUST have a `///` docString.
- Enums use `@JsonEnum(alwaysCreate: true)` + `@JsonValue` for all values. (`@FreezedEnum` does NOT exist — never use it.)
- Use `@Default(value)` for defaults — not constructor `=`.
- No business logic in Freezed models — pure data only.
- Additive-only evolution: never remove/rename/retype fields. Deprecate with `@Deprecated`.
- Run `dart pub run build_runner build` after any model change.
- Never hand-edit `.freezed.dart` or `.g.dart` files.
- `@unfreezed` requires `sealed` or `abstract` + no `const factory`.
- Place models in `lib/models/src/`, enums in `lib/models/enums/`, converters in `lib/models/converters/`.

## Guidance
- All code generators, including `sdd-design`, must reference the `freezed` skill for model-related tasks.
- Skills should be updated with version and owner. Add entries for new conventions or domains as required.
- If convention changes are needed, update the specific skill and increment its version.

---
_Last updated: 2026-04-15_
