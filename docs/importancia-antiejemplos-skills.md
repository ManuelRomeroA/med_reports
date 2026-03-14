# Importancia de Incluir Anti-Ejemplos en las Skills para Reducir Errores de Convención

## Introducción
En el contexto de desarrollo asistido por agentes, una skill bien definida describe patrones, convenciones y buenas prácticas esperadas para una tarea específica. Sin embargo, hemos observado que, incluso con skills detalladas, los sub-agentes pueden incurrir en errores repetitivos que contravienen las convenciones del equipo o el proyecto. Este documento expone la razón de este fenómeno, destaca los beneficios de incluir anti-ejemplos (patrones prohibidos) en las skills y aporta recomendaciones concretas para su implementación y enforcement.

---

## 1. ¿Por qué los sub-agentes pueden cometer errores de convención aunque la skill esté bien definida?

- **Ambigüedad y generalidad:** Las skills suelen centrarse en los patrones correctos, pero a menudo omiten advertencias explícitas sobre lo que NO se debe hacer, dejando zonas grises interpretables por el sub-agente.
- **Sobrecarga de instrucciones:** Si la definición de la skill es extensa y solo positiva, los detalles prohibidos pueden pasar inadvertidos en automatismos, sobre todo cuando el agente realiza tareas en paralelo o iterativamente.
- **Aprendizaje y sobreajuste:** Los sub-agentes generan soluciones basadas en ejemplos positivos y generalizan a partir de ellos; si no se restringen explícitamente los patrones incorrectos, pueden cometer errores de forma consistente.

---

## 2. Ventajas de incluir anti-ejemplos en las skills

- **Reducción del margen de error:** Ejemplos explícitos de lo que NO debe hacerse delimitan el espacio de soluciones válidas, evitando malas interpretaciones.
- **Facilita la validación y las revisiones:** Los reviewers y validadores automáticos pueden detectar fácilmente patrones prohibidos.
- **Desambigüación para el agente:** Instruir con anti-ejemplos resuelve dudas internas del agente sobre situaciones límite o atípicas.
- **Enforcement automático:** Permite definir reglas claras para linters, generadores o tests automáticos que rechacen soluciones incorrectas antes de integrarlas.
- **Mejora el onboarding:** Los nuevos integrantes del equipo reconocerán tanto los patrones esperados como los errores históricamente comunes.

---

## 3. Ejemplo concreto: modelos Freezed en Dart

**Convención definida:**  
- Cada clase debe tener un breve DartDoc 1-2 líneas sobre la clase.  
- Cada campo en el factory debe tener su DartDoc directamente arriba, una línea, nunca bloques genéricos.  
- No deben usarse bloques de documentación masiva ni comentarios arriba del factory.

**Ejemplo incorrecto #1 (anti-ejemplo):**  
```dart
/// Modelo de usuario del sistema
@freezed
class User with _$User {
  factory User({
    // Nombre del usuario (¡incorrecto: falta el /// y debe ir arriba, no inline!)
    String name,
    // Edad del usuario (¡incorrecto! por la misma razón)
    int age,
  }) = _User;
}
```

**Ejemplo incorrecto #2 (anti-ejemplo):**  
```dart
@freezed
class User with _$User {
  // Bloc de documentación masiva (¡prohibido!)
  /// name: nombre del usuario  
  /// age: edad del usuario  
  factory User({
    String name,
    int age,
  }) = _User;
}
```

**Ejemplo correcto:**  
```dart
/// Modelo de usuario del sistema
@freezed
sealed class User with _$User {
  const User._();
  const factory User({
    /// Nombre del usuario
    String name,
    /// Edad del usuario
    int age,
  }) = _User;
}
```

---

## 4. Beneficios de tener anti-ejemplos claros

- **Disminución de errores reincidentes:** Se minimizan patrones incorrectos típicos al quedar visiblemente prohibidos.
- **Menos ambigüedad:** El equipo y los agentes entienden exactamente qué evitar, no solo qué producir.
- **Refuerzo del aprendizaje automático y humano:** Tanto los revisores humanos como las herramientas automatizadas reconocen con precisión las desviaciones.
- **Establecimiento de documentación viva:** Los anti-ejemplos se convierten en un respaldo pedagógico iterativo.
- **Facilidad de auditoría:** Ante errores sistemáticos, se identifican rápidamente y se actualizan los anti-ejemplos según sea necesario.

---

## 5. Recomendaciones para enforcement automático y validación

- **Linters personalizados:** Implementar linters que busquen patrones prohibidos definidos en los anti-ejemplos de la skill, fallando el build cuando se detectan.
- **Validación en la CI:** Agregar checks automáticos que comparen los archivos generados con los anti-ejemplos adjuntos a la skill.
- **Tests regresivos:** Para cada anti-ejemplo, incluir un test que debe fallar si ese patrón aparece.
- **Checklist de revisión:** Añadir sección obligatoria en las PR donde se verifique explícitamente la ausencia de anti-ejemplos.
- **Actualización continua:** Revisar y actualizar los anti-ejemplos al detectar nuevos errores recurrentes no previamente documentados.

---

## Conclusión

La inclusión explícita de anti-ejemplos en las skills es una medida de alto impacto para reducir errores, acelerar la validación y formalizar el aprendizaje colectivo. Se recomienda adoptar esta práctica a partir de ahora en la redacción y revisión de cualquier skill para generación automática asistida en el equipo.

---
