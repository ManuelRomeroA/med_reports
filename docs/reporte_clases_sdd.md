# Reporte de cambios y errores en "pruebas de creación de clases"

## Petición Inicial

Se solicitó agregar dos nuevas clases al proyecto dentro de la carpeta `models`:

- **test1:** mutable, con los campos name, lastname y createdAt (DateTime).
- **test2:** inmutable, con los campos id (String), name, una lista de test1 (List<test1>), y createdAt (DateTime) deserializado desde unix timestamp.

Los modelos debían ubicarse en `lib/models/`, con serialización/deserialización automática vía Freezed. Se pidió seguir las convenciones y estructura del proyecto.

---

## Resultado

- Se implementaron test1 y test2 usando Freezed (@unfreezed/@freezed).
- Se crearon los archivos test1.dart y test2.dart dentro de `lib/models/`.
- Se generó un convertidor unix_timestamp_converter.dart y un convertidor de lista (list_test1_converter.dart).
- Los archivos fueron exportados desde `models.dart`.
- El código generado pasó pruebas de round-trip, serialización JSON y pruebas básicas de integración.

---

## Errores detectados en el proceso

**1. Manejo incorrecto de la centralización en la librería:**
- No se tuvo en cuenta que `models/models.dart` está declarado como una librería (`library;`).
- Según la convención marcada en el proyecto, TODO archivo dentro de esa carpeta debería ser parte de la librería y, por ende, declarado como `part` en el archivo central, salvo convertidores/utilidades.
- Exportar archivos desde `models.dart` (por ejemplo: export 'test1.dart';) cuando es una librería con `part`, va contra la convención y provoca artefactos inconsistentes y posibles errores de generación o de imports.

**2. Creación innecesaria de convertidor de entidad para modelos Freezed/Unfreezed:**
- Se creó un convertidor de lista (`ListTest1Converter`) para List<test1> dentro de Freezed.
- Este paso NO era necesario, pues Freezed (con json_serializable y si los modelos implementan correctamente fromJson/toJson) admite la serialización anidada de listas de modelos Freezed/Unfreezed sin necesitar un convertidor explícito.
- El uso de este converter introduce complejidad e incrementa el umbral de mantenimiento sin beneficio real.

**3. Organización incorrecta de los convertidores:**
- Los convertidores fueron puestos directamente dentro de `lib/models/`.
- Según las buenas prácticas y la estructura propuesta, los convertidores deberían estar dentro de `lib/models/converters/` (carpeta específica para conversions), manteniendo los modelos y utilidades bien separadas.

---

## Lecciones y recomendaciones

- Antes de tocar la estructura de carpetas y archivos en modelos compartidos, revisar si esos archivos forman parte de una librería centralizada (`library;` y `part`).
- Para modelos Freezed/JsonSerializable, confiar en el serializador automático para colecciones; no crear convertidores manuales salvo que sea realmente necesario.
- Utilizar una carpeta dedicada para convertidores, idealmente `lib/models/converters/`, para mantener el orden y evitar conflictos futuros.
- Evalúa eliminar el converter de listas e integrar las clases como `part` dentro de la librería central para seguir la convención del proyecto.

---

## Estado final

Todos los requerimientos funcionales se cumplen en cuanto a la existencia y funcionamiento de los modelos. Quedan por subsanar y refactorizar los errores mencionados para alinearse 100% a las convenciones del proyecto y mejores prácticas de organización.
