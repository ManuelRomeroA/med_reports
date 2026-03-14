# Error por omisión de 'abstract' o 'sealed' en clases Freezed (`freezed >= 3.x`)

Desde la versión 3.0.0 de Freezed (febrero 2025), se ha introducido un cambio fundamental en la sintaxis de las clases generadas con esta librería. El objetivo de este documento es explicar:

- El nuevo requisito del modificador 'abstract' o 'sealed' en clases Freezed,
- Un contexto histórico del cambio,
- Ejemplos de uso incorrecto y correcto,
- Recomendaciones de migración para equipos y plantillas,
- Y buenas prácticas para skills y herramientas automatizadas relacionadas.

---

## 🟠 Descripción del Error

A partir de Freezed 3.0.0, es obligatorio declarar las clases Freezed como `abstract` o `sealed`. Omitir dichos modificadores provoca errores de compilación:

> "Classes using the factory constructor now require a keyword `sealed` / `abstract`"  
> ([migration guide](https://github.com/rrousselGit/freezed/blob/master/packages/freezed/migration_guide.md))

Si se omite, verás errores similares a:

```
Error: Classes using the factory constructor now require a keyword: `sealed` / `abstract`.
```

Este cambio fue introducido para alinearse con el sistema de tipos reciente de Dart y mejorar el soporte para pattern matching y herencia.

---

## ⏳ Contexto Histórico

- **Freezed ≤ 2.x** (hasta enero 2025):  
  El uso de `abstract` en las clases Freezed era opcional.  
  Ejemplo válido y frecuente:
  ```dart
  @freezed
  class Person with _$Person {
    const factory Person({required String name}) = _Person;
  }
  ```
- **Freezed >= 3.x** (desde febrero 2025):  
  Se requiere explícitamente marcar como `abstract` o `sealed` la clase Freezed, o implementar manualmente el mixin `_$MiClase`.
  Ejemplo correcto:
  ```dart
  @freezed
  abstract class Person with _$Person {
    const factory Person({required String name}) = _Person;
  }
  ```
  o
  ```dart
  @freezed
  sealed class Person with _$Person {
    const factory Person({required String name}) = _Person;
  }
  ```

---

## 😱 Ejemplo Incorrecto (`freezed >= 3.x`)

```dart
@freezed
class Model with _$Model {
  factory Model.first(String a) = First;
  factory Model.second(int b, bool c) = Second;
}
```
**Resultado:**  
> Error: Classes using the factory constructor now require a keyword: `sealed` / `abstract`.

---

## ✅ Ejemplo Correcto (`freezed >= 3.x`)

```dart
@freezed
sealed class Model with _$Model {
  factory Model.first(String a) = First;
  factory Model.second(int b, bool c) = Second;
}
```

O usando `abstract` (ideal en modelos simples o clases base):

```dart
@freezed
abstract class Person with _$Person {
  const factory Person({required String name}) = _Person;
}
```

---

## ℹ️ ¿Cuándo usar `sealed` y cuándo `abstract`?

- Usa `sealed` si tienes una jerarquía de clases con múltiples fábricas (uniones/discriminación por tipo/casos).
- Usa `abstract` para modelos planos (sin subtipos), común en DTOs y simples entidades.

---

## 🚦 Recomendaciones de Migración

Para equipos y proyectos que usen Freezed:

1. **Revisar todos los modelos Freezed existentes.**  
   Actualizar cabeceras de clases agregando `sealed` o `abstract` cuando corresponda.
2. **Actualizar plantillas, skills y generadores de código.**  
   Por ejemplo, si utilizan el skill `sdd-design-freezed`, asegúrense que la plantilla genere la palabra clave `sealed` o `abstract` según el caso y que los ejemplos/documentación lo reflejen.
3. **Automatizar detección y migración.**  
   Utilicen lint rules, custom_lints (p.ej. `freezed_lint`), o scripts en CI para prevenir nuevos errores por omisión.
4. **Verificar si hay casos avanzados que requieran implementación manual del mixin `_$MiClase`.**  
   Solo en casos muy personalizados/no recomendados.
5. **Validar compatibilidad aguas arriba y aguas abajo (dependientes y consumidores de modelos).**

---

## 📢 Skills y templates: actualización recomendada

El skill `sdd-design-freezed` (y cualquier herramienta de autogeneración de modelos Freezed) debe garantizar lo siguiente:

- Toda clase Freezed base debe ser declarada con `abstract` o `sealed` según el uso.
- Documentar esta convención en los comentarios y README emergentes.
- Actualizar cualquier snippet, live template o wizard relacionado.
- Verificar regularmente las [notas de migración y changelog oficiales](https://pub.dev/packages/freezed/changelog) para futuras actualizaciones.

---

## 📝 Conclusión

No aplicar la nueva convención impedirá compilar o generar los modelos correctamente a partir de Freezed 3.x, afectando la robustez del proyecto. Adaptar todos los modelos, utilidades y skills es fundamental para mantener la compatibilidad y aprovechar las mejoras del ecosistema Dart/Flutter.

---

**Referencias:**
- [Changelog Freezed 3.x](https://pub.dev/packages/freezed/changelog)
- [Guía de migración oficial](https://github.com/rrousselGit/freezed/blob/master/packages/freezed/migration_guide.md)
- [Readme Freezed](https://pub.dev/packages/freezed)
