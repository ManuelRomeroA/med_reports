# PRD: med_reports — Eco-Report Pro

## Propósito
App de escritorio (Flutter) para que la **Dra. Gisemar Gutiérrez González** (ginecología-obstetricia, Maternidad Privada González Mendoza) genere reportes ecográficos clínicos de forma rápida, con branding institucional y exportación a PDF. La app debe escalar a **múltiples tipos de reporte** sin reescribir la base.

## Resumen ejecutivo
La app nació con **un solo reporte** (Eco Pélvico ginecológico). Se está evolucionando a una **arquitectura multi-reporte** organizada por feature (Screaming Architecture), con navegación por tabs y un tema centralizado. El segundo reporte en construcción es el **Eco Morfogenético Prenatal (11-14 semanas)**; hay un tercero previsto (Perfil Biofísico).

## Reportes
| Reporte | Estado | Descripción |
|---------|--------|-------------|
| **Eco Pélvico** | ✅ Funcional | Ecografía ginecológica de primera consulta (útero, ovarios, vejiga, nódulos, estados vaginal/cervical). Genera PDF institucional. |
| **Eco Morfogenético Prenatal** | 🔨 En construcción | Estudio obstétrico-fetal 11-14 semanas. ~60 campos en 6 tamizajes + embarazo + interpretación. Fuente de verdad del PDF: `formato de eco morfogenetico.pdf`. Diseño del formulario: `Eco Morfogenetico.html` (validado). |
| **Perfil Biofísico** | ⏳ Futuro | Tercer reporte previsto. Aún sin definir. |

## Arquitectura (decidida)
- **Organización por reporte**: `lib/components/{eco_pelvico,eco_morfogenetico,shared}/`, `lib/views/{eco_pelvico,eco_morfogenetico}/`. Cada reporte es un módulo autocontenido.
- **App shell**: `lib/views/app_shell.dart` — header institucional (Dra. Gisemar) ARRIBA, fijo, + `ThemedTabView` (layrz_theme) con un tab por reporte. `AutomaticKeepAliveClientMixin` preserva el estado al cambiar de tab.
- **Tema centralizado**: `lib/theme/med_theme.dart` — clase `MedTheme` con `static const Color` (rosaVieja `0xFF8B5A63`, cafeVinoOscuro `0xFF4a3a3d`, background `0xFFF4F5F7`, + paleta PDF) y `static TextStyle`. Fuente única de verdad para colores/estilos. Patrón espejo de `gravity_shared/lib/theme/gym_theme.dart`.
- **Modelos**: Freezed MONOLÍTICO. Todos en `lib/models/src/` flat, con `part '../models.dart'` y un solo `models.freezed.dart` / `models.g.dart`. NO mover a subcarpetas (rompe el part-of chain). Decisión explícita del usuario.
- **Estado**: plain `setState` + mutación directa del draft por constructor. NO usa layrz_state.
- **PDF**: hoy embebido en `bladder.dart` (`generarReportePdf`). Plan: extraer el "chrome" compartido (header, footer, firma, helpers) a `lib/pdf/` en la última fase, con un builder por reporte.

## Convenciones técnicas
- **Freezed**: `@unfreezed sealed/abstract` (sin `const factory`) para mutables; este proyecto usa constructor privado `._()` + `??=` para init lazy de sub-modelos nullable (patrón intencional de layrz_models, NO cuestionar). Enums con `@JsonEnum(alwaysCreate: true)` + `@JsonValue` — **NUNCA `@FreezedEnum`** (no existe). DocStrings `///` obligatorios. Evolución additive-only. Skill: `.atl/skills/freezed.md`.
- **Lint**: helpers locales NO pueden empezar con `_`.
- **Commits**: Conventional Commits, SIN atribución AI.
- **Build**: `flutter test` (Strict TDD deshabilitado). `dart run build_runner build --delete-conflicting-outputs` tras cambios de modelos. NUNCA `flutter build` salvo pedido.
- **Branch**: trabajo en `development`. PRs a `main`.

## Plan de implementación (SDD: change `multi-report-architecture`)
Artefactos en engram: proposal #714, spec #715, design #716, tasks #717 (60 tareas, 4 fases).

- **Fase 1 — Refactor arquitectónico** ✅ HECHA Y PUSHEADA (commit `3d0627c`). Cero regresión verificada. MedTheme, reorganización por reporte, AppShell + tabs, fondo gris.
- **Fase 2 — Modelos Freezed del Morfogenético** ⏳ SIGUIENTE. `MorphogeneticDraft` + sub-modelos (GrowthScreening, ObstetricScreening, StructuralDefects, PreeclampsiaScreening, CardiopathyScreening, ChromosomopathyScreening) + GrowthRow/ChromosomopathyRow + enums (FetalRhythm, FetalMovements, PreeclampsiaRisk). Monolítico. Luego build_runner.
- **Fase 3 — Formulario UI** del Morfogenético (`components/eco_morfogenetico/`). Per `Eco Morfogenetico.html`: secciones con cards, sub-cards por sistema anatómico, toggles segmentados, botón "Todo normal" con defaults clínicos, tablas dinámicas (crecimiento, cromosomopatías), auto-cálculos (FUM→semanas/FPP Naegele FUM+280d; IP promedio = (IP der + IP izq)/2) en helper puro `morpho_calcs.dart`.
- **Fase 4 (ÚLTIMA) — PDF del Morfogenético**. Extraer chrome de bladder.dart → `lib/pdf/`, cero regresión del PDF pélvico, builder fiel al formato institucional de 4 páginas.

## Ambigüedades a confirmar con la doctora (en Fase 3)
- Valores por defecto del botón "Todo normal" (clínicamente correctos).
- Opciones cerradas de los toggles (ritmo, movimientos fetales, riesgo preeclampsia).
- Formato display de edad gestacional ("X semanas + Y días").

## Visión de largo plazo (del PRD original, aún vigente)
- **Persistencia local (SQLite)**: guardar reportes/pacientes, autocompletar en visitas posteriores. Abstracción de repositorio.
- **Compartir**: exportar PDF y compartir vía SO.
- **Sincronización remota (futuro)**: Supabase (preferencia) para backup/búsqueda desde web. Diseñar para swap sin reescribir UI.
- **Excluido fase actual**: auth multi-rol, sync en tiempo real, backups automáticos.

## Métricas de éxito
- Reducir tiempo medio por reporte ~30% vs entrada manual.
- PDF funcional y compartible por cada tipo de reporte.
- Agregar un nuevo reporte sin tocar los existentes (validación de la arquitectura escalable).

## Archivos clave
- `lib/views/app_shell.dart` — shell con tabs
- `lib/theme/med_theme.dart` — tema centralizado
- `lib/models/models.dart` — agregador Freezed monolítico
- `lib/components/eco_pelvico/bladder.dart` — widget vejiga + generación PDF actual
- `Eco Morfogenetico.html` — diseño del formulario nuevo (validado)
- `formato de eco morfogenetico.pdf` — fuente de verdad del PDF nuevo
- `BRIEF_DISENO_eco_morfogenetico.md` — brief de campos para diseño
- `.atl/skills/freezed.md` — convenciones de modelos
