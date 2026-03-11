# PRD: med_reports — Eco‑Report Pro

## Propósito
Facilitar y acelerar el trabajo de ginecólogos al generar reportes de ecografía, minimizando la entrada repetitiva de datos y permitiendo exportar y compartir informes clínicos de forma segura.

## Resumen ejecutivo
La app actual contiene los widgets necesarios para capturar datos clínicos y hallazgos (paciente, protocolo, vejiga, útero/ovarios, nódulos). Falta implementar:
- Un objeto de dominio serializable para el Reporte.
- Exportación a PDF y opción para compartir.
- Persistencia local (SQLite) para guardar reportes/pacientes y autocompletar en visitas posteriores.
Futuro: sincronización opcional con backend (p. ej. Supabase) para almacenamiento remoto y búsquedas/backup.

## Objetivos
- CO1: Implementar un modelo `Report` serializable (JSON) que represente todos los campos del UI.
- CO2: Añadir exportación a PDF y compartir vía sistema operativo.
- CO3: Guardar y recuperar reportes/pacientes localmente usando SQLite.
- CO4: Diseñar arquitectura para posible sincronización con servicios como Supabase (preferencia) o Firebase.
- CO5: Mantener privacidad y seguridad de datos.

## Métricas de éxito
- Reducir el tiempo medio por reporte en 30% comparado con entrada manual.
- Generación de PDF funcional y compartible desde la app.
- Recuperación de datos de pacientes guardados en < 5s en dispositivo medio.
- Soporte para cambiar a backend remoto sin reescritura significativa de UI.

## Alcance
- Incluido: definición del modelo `Report`, serialización, PDF, compartir, sqlite local con CRUD básico, UI para lista de reportes y selección de paciente previo, abstracción de repositorio para swap a remote.
- Excluido (fase 1): autenticación multi‑rol, sincronización en tiempo real, backups remotos automáticos.

## Personas / Usuarios
- Ginecólogo/a (primario): crear reportes rápidamente y guardarlos.
- Recepcionista/asistente: buscar y seleccionar paciente para el profesional.
- Administrador clínico (futuro): backup y sincronización remota.

## Casos de uso claves
- CU1: Crear reporte nuevo, completar campos, generar PDF y compartir.
- CU2: Guardar reporte localmente y recuperar por paciente.
- CU3: Seleccionar paciente existente al iniciar nuevo reporte y autofill.
- CU4 (futuro): Sincronizar reportes a Supabase y buscar por paciente desde web.

## Requerimientos funcionales (prioridad alta)
- RF1: Definir `Report` model que cubra todos los widgets (identificación, medidas, diagnósticos, conclusiones, metadatos).
- RF2: Botón `PROCESAR REPORTE` genera archivo PDF con layout profesional.
- RF3: Compartir PDF usando hoja de compartir nativa.
- RF4: Guardar/recuperar reportes y pacientes en SQLite.
- RF5: UI: listado de reportes, búsqueda por nombre/CI/fecha, selección para editar o re‑generar PDF.
- RF6: Repositorio de datos con abstracción para cambio a remote.

## Requerimientos no funcionales
- RNF1: Performance: listado y recuperación < 5s (dispositivo medio).
- RNF2: Seguridad: datos locales cifrados o protegidos por políticas (evaluar cifrado en disco).
- RNF3: Soporte offline total para creación y exportación.
- RNF4: Código modular y testeable; usar paquetes mantenidos.
- RNF5: Internacionalización mínima (español por defecto).

## Modelo de datos (propuesta JSON)
Ejemplo representativo de `Report`:

```json
{
  "id": "uuid",
  "createdAt": "2026-03-11T12:00:00Z",
  "patient": {
    "id": "uuid",
    "name": "Nombre Apellido",
    "ci": "12345678",
    "age": 34,
    "bloodGroup": "O+",
    "fur": "2026-01-01"
  },
  "studyProtocol": {
    "type": "ECOSONOGRAMA_PELVICO",
    "equipment": "Mindray Alta Resolución"
  },
  "findings": {
    "bladder": {"regularidad":"REGULAR","pared":"3","fondoDouglas":"LIBRE"},
    "uterus": {},
    "ovaries": [
      {"side":"RIGHT","ap":"30","tr":"20","lo":"18","vol":"565","type":"NORMALES","notes":""}
    ],
    "nodules": {"has": false, "description": ""}
  },
  "conclusion": "Texto...",
  "meta": {"doctor":"Dra. X","clinic":"Maternidad Y"}
}
```

## Export / PDF / Compartir
- Recomendación librerías Flutter: `pdf` + `printing` para crear y renderizar PDF; `share_plus` para compartir.
- Diseño PDF: plantilla con header (doctor, clínica, fecha), secciones claras, tablas para medidas y cálculo de volúmenes, conclusión y firmas.
- Implementar tests para asegurar la salida PDF básica.

## Persistencia local (SQLite)
- Recomendación: usar `drift` (migrations, queries tipadas) o `sqflite` (más simple). Se recomienda `drift` para escalabilidad.
- Estrategia inicial: tabla `reports` con columnas `id TEXT PK`, `created_at INTEGER`, `data TEXT` (JSON blob). Fácil migración y compatibilidad con Supabase later.

## Backend futuro: Supabase vs Firebase
- Supabase (recomendado): Postgres real, GraphQL disponible, storage y auth; buen fit si se requiere SQL/GraphQL y relaciones.
- Firebase: fuerte en mobile y offline (Firestore), pero NoSQL; no tiene GraphQL nativo.
- Recomendación: diseñar capa de repositorio (`ReportRepository`) para poder cambiar backend sin reescribir UI.

## Seguridad y privacidad
- Cumplir legislación local sobre datos médicos; cifrar datos sensibles en dispositivo (evaluar `flutter_secure_storage` para claves + cifrado de sqlite).
- Control de acceso para sincronización remota (autenticación, roles) en fases posteriores.

## Criterios de aceptación
- CA1: Crear y guardar un reporte local; aparece en listado.
- CA2: Generar PDF desde un reporte y abrir hoja de compartir.
- CA3: Al crear nuevo reporte, poder seleccionar paciente existente y autofill de datos.
- CA4: Tests unitarios para cálculo de volumen y serialización JSON.

## Roadmap / Milestones
1. M1 (1 week): Definir `Report` model y serialización + tests.
2. M2 (1–2 weeks): Implementar generación básica de PDF y compartir (botón funcional).
3. M3 (2 weeks): Añadir sqlite local (`drift`) y UI: listado, búsqueda, selección paciente.
4. M4 (2–3 weeks): Abstracción de repositorio y POC Supabase (auth + subir reportes).
5. M5 (ongoing): Polishing PDF templates, seguridad, tests e internacionalización.

## Estimaciones (apróx.)
- M1: 1 dev día
- M2: 3–5 dev días
- M3: 5–8 dev días
- M4: 5–10 dev días
- MVP (M1–M3): ~2–3 semanas (1 dev)

## Riesgos y mitigaciones
- Riesgo: Exposición de datos sensibles → Mitigar con cifrado local y buenas prácticas.
- Riesgo: PDF layout complejo → empezar con plantilla simple y evolucionar.
- Riesgo: Sincronización conflictiva → diseñar primero para local + push manual, luego sync con estrategia de conflicto.

## Recomendaciones técnicas
- PDF: `pdf` + `printing`
- Share: `share_plus`
- Local DB: `drift` (recomendado) o `sqflite`
- Modelos: `freezed` + `json_serializable`
- Cloud: `supabase_flutter` para integración y GraphQL si se necesita
- Tests: unit y widget tests para formularios y lógica de cálculo

## Próximos pasos (elige 1)
1. Implementar los modelos `@freezed` y `@unfreezed` y generar artefactos (`build_runner`). (Siguiente tarea recomendada)
2. Implementar generación de PDF y compartir.
3. Diseñar la DB local con `drift` y CRUD + UI listado.

---

Documento generado y añadido al repositorio.
