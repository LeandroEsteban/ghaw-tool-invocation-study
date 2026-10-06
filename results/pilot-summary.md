# Resultados preliminares reproducibles

Este archivo resume los resultados que el paquete debe reproducir para la Etapa 2.

## Muestra

- 20 runs en total.
- 5 runs exitosos analizados a nivel de invocación.
- 15 runs fallidos clasificados por etapa del fallo.

## Invocaciones en runs exitosos

- 40 invocaciones.
- 7 herramientas distintas.
- Retrieval: 26 (65%).
- Processing/Execution: 10 (25%).
- Modification: 4 (10%).

### Frecuencia por herramienta

| Herramienta | Invocaciones | Porcentaje |
|---|---:|---:|
| `search_issues` | 15 | 37.5% |
| `shell` | 10 | 25.0% |
| `list_label` | 5 | 12.5% |
| `issue_read` | 3 | 7.5% |
| `list_issues` | 3 | 7.5% |
| `add_labels` | 2 | 5.0% |
| `add_comment` | 2 | 5.0% |

## Transiciones

- 35 transiciones consecutivas.

Las tres transiciones de herramientas más frecuentes son:

1. `shell -> shell`: 6.
2. `list_label -> search_issues`: 5.
3. `search_issues -> search_issues`: 4.

A nivel de categoría:

- Retrieval -> Retrieval: 19.
- Processing/Execution -> Processing/Execution: 6.
- Retrieval -> Processing/Execution: 4.
- Processing/Execution -> Retrieval: 2.
- Retrieval -> Modification: 2.
- Modification -> Modification: 2.

## Fallos

- 10 runs: autenticación del proveedor / HTTP 401.
- 4 runs: inferencia del modelo / HTTP 429.
- 1 run: setup/install antes de iniciar el agente.

Los fallos 401/429 no deben interpretarse como decisiones del agente de utilizar cero herramientas; el error ocurrió antes de poder comparar una trayectoria instrumental completa con los runs exitosos.
