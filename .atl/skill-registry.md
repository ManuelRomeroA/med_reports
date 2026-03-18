
---
# Skill Registry
As your FIRST step before starting any work, identify and load skills relevant to your task from this registry. This file lists all reusable project skills. All agents, generators, and contributors MUST consult the indicated skills before producing, reviewing, or validating code artifacts.
| Skill Name | When/How To Use | Path                        | Owner     | Version |
|------------|-----------------|-----------------------------|-----------|---------|
| freezed    | Always consult before generating, reviewing, or validating any Dart Freezed/unfreezed model, enum, or converter. Mandatory for sdd-design and any workflow or contributor affecting Dart models.| .atl/skills/freezed.md | Manuel Romero | 1.2    |
| When the orchestrator launches you to think through a feature, investigate the codebase, or clarify requirements. | sdd-explore | /Users/manuelromero/.config/opencode/skills/sdd-explore/SKILL.md |
| When the orchestrator launches you to create or update the task breakdown for a change. | sdd-tasks | /Users/manuelromero/.config/opencode/skills/sdd-tasks/SKILL.md |
| When the orchestrator launches you to archive a change after implementation and verification. | sdd-archive | /Users/manuelromero/.config/opencode/skills/sdd-archive/SKILL.md |
| When the orchestrator launches you to implement one or more tasks from a change. | sdd-apply | /Users/manuelromero/.config/opencode/skills/sdd-apply/SKILL.md |
| When the orchestrator launches you to verify a completed (or partially completed) change. | sdd-verify | /Users/manuelromero/.config/opencode/skills/sdd-verify/SKILL.md |
| When user wants to initialize SDD in a project, or says "sdd init", "iniciar sdd", "openspec init". | sdd-init | /Users/manuelromero/.config/opencode/skills/sdd-init/SKILL.md |SKILL.md |
| When the orchestrator launches you to write or update the technical design for a change. | sdd-design | /Users/manuelromero/.config/opencode/skills/sdd-design/SKILL.md |
| When the orchestrator launches you to create or update a proposal for a change. | sdd-propose | /Users/manuelromero/.config/opencode/skills/sdd-propose/SKILL.md |
| When the orchestrator launches you to write or update specs for a change. | sdd-spec | /Users/manuelromero/.config/opencode/skills/sdd-spec/SKILL.md |

## Guidance
- All code generators, including the main `sdd-design` agent, must reference the `freezed` skill for model-related tasks.
- Skills should be updated with version and owner. Add entries for new conventions or domains as required.
- If convention changes are needed, update the specific skill and increment its version.
---
### Example: Integration with `sdd-design`
Before generating, revising, or validating Dart models/enums, `sdd-design` must load and enforce the conventions specified in `.atl/skills/freezed.md`.
---
_Last updated: March 2026_
---