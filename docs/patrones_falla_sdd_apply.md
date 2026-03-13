# Dificultades y patrones de fricción en la automatización SDD-Apply para la documentación masiva de modelos Dart

## Resumen ejecutivo
Este documento expone los principales obstáculos, patrones de fallo y motivos por los cuales fue frecuentemente necesario forzar manualmente el paso 'apply' en la tarea de unificación y actualización masiva de documentación en archivos de modelos en lib/models. El análisis está motivado por el objetivo de mejorar la eficiencia, autonomía y proactividad de las skills de agent teams en flujos SDD repetitivos y de estandarización.

## Patrón de fricción observado
- Durante la ejecución de sdd-apply para la mejora_documentacion_modelos_v1, aunque los archivos fuente presentaban diferencias en comentarios (docstrings), el sistema a menudo detectaba "pocos" o "ningún" cambio significativo según su lógica interna (probablemente por heurística de líneas o ausencia de diferencias de lógica/estructura), y por defecto no ejecutaba sobrescrituras ni aplicaba los cambios si no se forzaba explícitamente.
- Esto llevó a que, tras completar la cadena de planificación (spec, design, tasks), fuera necesario que el usuario solicitara reiteradas veces forzar el apply, porque la automatización no detectaba la naturaleza "masiva/estandarizadora" del cambio de documentación.

## Errores subyacentes y oportunidades de mejora
- La lógica predeterminada de "no aplicar si no hay cambios de código funcionales" es razonable para evitar operaciones y commits repetitivos, pero en contextos de uniformización de metadatos, comentarios o estandarización de API/docs, se vuelve contraproducente.
- Las skills deberían ser capaces de detectar una intención "masiva", "forzada" o de uniformización (por ejemplo, presencia de términos como "estandarización", "sobrescribir documentación" o "masivo") y activar automáticamente el apply forzado.
- El usuario no debería tener que guiar manualmente ni indicar varias veces el forzado del apply. Pensar proactivamente por el intent global y la omisión de auto-forzar limita la productividad y desincentiva el uso avanzado del flujo SDD.

## Recomendaciones para skills SDD
- Habilitar el switch automático a apply forzado ante presencia de términos o intenciones de uniformización, limpieza masiva o estandarización.
- Sugerir siempre el apply con --force ante cambios de docstring/metadata, aun si los deltas funcionales parezcan mínimos.
- Registrar métricas de cuántas veces el usuario requiere forzar el apply para afinar los triggers de forzado automático.

## Conclusión
El patrón de requerir forzar manualmente el apply para cambios de documentación causa fricción repetitiva y afecta la percepción de autonomía de las agent teams. Mejorar la proactividad interpretando el contexto e intenciones masivas elevará la eficiencia y la experiencia global.
