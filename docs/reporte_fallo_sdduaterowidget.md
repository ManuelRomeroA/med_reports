# Reporte de fallo: ciclo SDD inconcluso en utero_widget

## Qué ocurrió

Se intentó ejecutar, bajo un flujo Spec-Driven Development (SDD), la refactorización integral y limpieza del archivo /lib/components/utero_widget.dart conforme a checklist, diseño y especificación aprobada. El objetivo era implementar el patrón mutable, eliminar estados locales, proteger findings ante null, alinear enums, dejar comentarios y asegurar limpieza total en el análisis estático.

Sin embargo, el orquestador quedó en un ciclo de coordinación, repitiendo mensajes tipo “te informo cuando esté todo listo”, sin ejecutar o coordinar la aplicación real de las correcciones en el código.

## Por qué falló

- El orquestador, por diseño, nunca implementa tareas técnicas (no lee/edita código, no ejecuta flutter analyze). Únicamente coordina, delega y sintetiza resultados de sub-agentes.
- Si los artefactos SDD (spec, diseño, tareas) no están correctamente almacenados y localizables para el sub-agente “apply”, el ciclo queda bloqueado esperando una acción que nunca ocurre.
- Cuando el sub-agente no encuentra las referencias correctas o artefactos completos, el sistema entra en un bucle donde promete avances (“te informo...”) sin que haya progreso real.

## Dónde ocurrió

En todo el ciclo de refactorización para el archivo /lib/components/utero_widget.dart, especialmente en las fases “apply” y “ff” del flujo SDD. El síntoma fue más visible en los intercambios finales de la secuencia.

## Aprendizajes extraídos

- Es imprescindible persistir y recuperar correctamente los artefactos SDD en cada fase (exploración, propuesta, propósito, tasks) para que el orquestador pueda pasar control efectivamente al sub-agente adecuado.
- El orquestador debería mostrar avances fase por fase y nunca devolver promesas de informe final sin demostrar que el trabajo técnico fue efectivamente ejecutado.
- Se recomienda evidenciar el trabajo concreto del sub-agente (archivos modificados, análisis limpio, logs) y alertar proactivamente si la delegación no puede completarse por carencia de artefactos.
- La confianza en la fórmula “te aviso cuando termine” solo debe usarse si hay reales procesos técnicos en marcha a la espera.
