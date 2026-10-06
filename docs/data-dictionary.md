# Diccionario de datos

## `data/processed/runs.csv`

| Campo | Descripción |
|---|---|
| `run_id` | Identificador de la ejecución en GitHub Actions. |
| `date` | Fecha registrada para el run. |
| `conclusion` | `success` o `failure` en la muestra piloto. |
| `failure_stage` | Etapa del fallo; vacío para runs exitosos. |
| `failure_reason` | Razón resumida del fallo; vacío para runs exitosos. |
| `agent_started` | Indica si existe evidencia de que el agente inició. |
| `agent_execution_attempted` | Indica si hubo intento de ejecución del agente/modelo. |
| `tool_invocation_observable` | Indica si los logs permiten observar si hubo tool calls. |
| `tool_calls_observed` | Número de tool calls observados. Vacío cuando no es válido interpretar el valor como cero. |

## `data/processed/agent-tool-invocations.csv`

| Campo | Descripción |
|---|---|
| `Run_ID` | Run al que pertenece la invocación. |
| `Invocation_Order` | Posición de la invocación dentro del run. |
| `Tool_Name` | Nombre normalizado de la herramienta. |
| `Provider` | Proveedor/origen registrado (`github`, `safeoutputs`, `local`). |
| `Tool_Type` | `MCP` o `execution`. |
| `Category` | `retrieval`, `processing` o `modification`. |

## `data/processed/agent-tool-summary.csv`

| Campo | Descripción |
|---|---|
| `Run_ID` | Identificador del run. |
| `Tool_Calls` | Total de invocaciones del run. |
| `Unique_Tools` | Número de herramientas distintas. |
| `Retrieval_Calls` | Invocaciones Retrieval. |
| `Processing_Calls` | Invocaciones Processing/Execution. |
| `Modification_Calls` | Invocaciones Modification. |
| `Unique_Tool_Names` | Herramientas distintas observadas. |
| `Tool_Sequence` | Secuencia completa de herramientas. |

## Archivos de resultados

- `tool-frequency.csv`: frecuencia por herramienta.
- `category-frequency.csv`: frecuencia por categoría.
- `transition-frequency.csv`: transiciones herramienta -> herramienta.
- `category-transition-frequency.csv`: transiciones categoría -> categoría.
- `failure-summary.csv`: resumen de los 15 fallos.
