# ghaw-tool-invocation-study
Este repositorio contiene el paquete de réplica de la **Etapa 2** del estudio *Patrones de Invocación de Herramientas en GitHub Agentic Workflows*. El objetivo del paquete es permitir reproducir los resultados preliminares reportados en el artículo a partir de los datos conservados del caso piloto.

> **Estado del estudio.** La evidencia presentada en esta etapa corresponde a un caso piloto sobre un único repositorio. El estudio completo proyecta ampliar el mismo procedimiento a diez repositorios.

## 1. Caso piloto

El caso piloto corresponde a:

- **Repositorio:** `apache/cloudstack`
- **Workflow:** `Daily Issue Triage`
- **Workflow ID:** `297795967`
- **Unidad primaria de análisis:** ejecución individual del workflow (`run`)
- **Unidad secundaria de análisis:** invocación individual de herramienta dentro de un run

La muestra preliminar contiene **20 runs**: 5 exitosos y 15 fallidos. Los cinco runs exitosos fueron analizados a nivel de invocación y secuencia de herramientas; los quince runs fallidos fueron inspeccionados para caracterizar la etapa y causa del fallo.

## 2. Resultados preliminares reproducibles

El paquete debe permitir regenerar los siguientes resultados reportados en la Etapa 2:

| Resultado | Valor |
|---|---:|
| Runs analizados | 20 |
| Runs exitosos | 5 |
| Runs fallidos | 15 |
| Invocaciones en runs exitosos | 40 |
| Herramientas distintas | 7 |
| Transiciones consecutivas | 35 |

### Frecuencia de herramientas

| Herramienta | Categoría | Invocaciones | Porcentaje |
|---|---|---:|---:|
| `search_issues` | Retrieval | 15 | 37,5% |
| `shell` | Processing/Execution | 10 | 25,0% |
| `list_label` | Retrieval | 5 | 12,5% |
| `issue_read` | Retrieval | 3 | 7,5% |
| `list_issues` | Retrieval | 3 | 7,5% |
| `add_labels` | Modification | 2 | 5,0% |
| `add_comment` | Modification | 2 | 5,0% |
| **Total** |  | **40** | **100%** |

### Frecuencia por categoría

| Categoría | Invocaciones | Porcentaje |
|---|---:|---:|
| Retrieval | 26 | 65% |
| Processing/Execution | 10 | 25% |
| Modification | 4 | 10% |

### Transiciones más frecuentes

| Transición | Frecuencia |
|---|---:|
| `shell → shell` | 6 |
| `list_label → search_issues` | 5 |
| `search_issues → search_issues` | 4 |

A nivel de categorías, las transiciones más frecuentes fueron `Retrieval → Retrieval` (19), `Processing/Execution → Processing/Execution` (6) y `Retrieval → Processing/Execution` (4).

### Fallos observados

Los 15 runs fallidos se distribuyeron de la siguiente forma:

| Tipo de fallo | Runs |
|---|---:|
| Autenticación del proveedor / HTTP 401 | 10 |
| Inferencia del modelo / HTTP 429 | 4 |
| Instalación o setup | 1 |

Los errores 401 y 429 ocurrieron antes de observar tool calls del agente. El fallo de instalación ocurrió antes de poder establecer que el agente hubiera iniciado. Por esta razón, estos casos no se interpretan como ejecuciones donde el agente "decidió" no utilizar herramientas.

## 3. Definición operacional de invocación de herramienta

Se considera **invocación de herramienta** una acción explícitamente emitida por el agente y registrada en sus artefactos de ejecución. Se incluyen herramientas MCP y herramientas locales de ejecución cuando puede identificarse la herramienta y su llamada.

Las operaciones auxiliares generadas posteriormente por componentes de infraestructura —por ejemplo, guards, gateways o backends— **no se contabilizan como decisiones instrumentales del agente**. En particular, llamadas internas como `search_repositories` detectadas en registros RPC/MCP no se cuentan si fueron generadas por infraestructura a partir de otra acción explícita del agente.

La fuente primaria para reconstruir el comportamiento del agente es `agent-stdio.log`. Los registros RPC/MCP y gateway se utilizan únicamente como evidencia auxiliar para validar llamadas o diagnosticar fallos.

## 4. Clasificación funcional

Las herramientas observadas se clasifican mediante los siguientes criterios:

- **Retrieval:** consulta o recuperación de información sin modificar el estado externo (`search_issues`, `list_label`, `issue_read`, `list_issues`).
- **Processing/Execution:** procesamiento o ejecución de comandos locales (`shell`).
- **Modification:** acciones que modifican el estado externo (`add_labels`, `add_comment`).

## 5. Runs del caso piloto

### Runs exitosos

| Run ID | Fecha | Conclusion |
|---|---|---|
| `37013897842` | 2026-10-02 | success |
| `36869901112` | 2026-10-01 | success |
| `36722746868` | 2026-09-30 | success |
| `36576508937` | 2026-09-29 | success |
| `36429848934` | 2026-09-28 | success |

### Runs fallidos

**Setup/install**

- `35606293166` — 2026-09-21

**HTTP 429 / model inference**

- `33397470332` — 2026-08-31
- `33097088034` — 2026-08-27
- `32854890720` — 2026-08-25
- `32488132484` — 2026-08-21

**HTTP 401 / provider authentication**

- `32036189850` — 2026-08-17
- `31707445019` — 2026-08-13
- `31604028138` — 2026-08-12
- `31498698802` — 2026-08-11
- `31395383913` — 2026-08-10
- `31184775561` — 2026-08-07
- `31109513357` — 2026-08-06
- `31013838640` — 2026-08-05
- `30917589923` — 2026-08-04
- `30821613475` — 2026-08-03

## 6. Fuentes de datos y artefactos

La identificación inicial de ejecuciones se realizó con GitHub CLI mediante:

```powershell
gh run list `
    --repo apache/cloudstack `
    --workflow 297795967 `
    --limit 100 `
    --json databaseId,conclusion,status,createdAt
```

Los análisis utilizaron artefactos asociados a cada ejecución. La fuente primaria para identificar tool calls fue:

```text
agent-stdio.log
```

Como evidencia auxiliar se utilizaron, cuando estaban disponibles:

```text
mcp-logs/rpc-messages.jsonl
mcp-logs/mcp-gateway.log
agent_output.json
github_rate_limits.jsonl
```

Los archivos RPC/MCP no deben utilizarse directamente como dataset de invocaciones del agente porque pueden contener operaciones internas generadas por la infraestructura.

## 7. Estructura del paquete

La versión final del paquete de réplica se organiza de la siguiente forma:

```text
.
├── README.md
├── scripts/
│   ├── extract_agent_tools.ps1
│   └── analyze_results.ps1
├── data/
│   ├── raw/
│   │   └── <artefactos preservados por run_id>/
│   └── processed/
│       ├── agent-tool-invocations.csv
│       ├── agent-tool-summary.csv
│       ├── runs.csv
│       └── failure-classification.csv
├── results/
│   ├── tool-frequency.csv
│   ├── category-frequency.csv
│   ├── transition-frequency.csv
│   ├── category-transition-frequency.csv
│   └── failure-summary.csv
└── docs/
    ├── environment.md
    ├── methodology.md
    └── data-dictionary.md
```

> Los nombres de scripts anteriores corresponden a la versión consolidada del paquete de réplica. El nombre y contenido completo del script utilizado originalmente durante el piloto no quedaron preservados; por ello, la versión publicada deberá identificarse como una implementación reproducible consolidada y no como una copia literal del script histórico.

## 8. Entorno

El piloto original fue realizado en Windows utilizando PowerShell y GitHub CLI. Las versiones exactas utilizadas durante la primera ejecución no quedaron registradas en ese momento.

Para la validación del paquete se registró el siguiente entorno:

| Componente | Versión |
|---|---|
| Windows build | `10.0.26100.9444` |
| PowerShell | `5.1.26100.9444` |
| PSEdition | `Desktop` |
| GitHub CLI (`gh`) | `2.102.0` |
| GitHub Agentic Workflows (`gh aw`) | `v0.89.21` |

La autenticación de GitHub CLI estaba configurada mediante el keyring de Windows. **No se incluyen tokens, credenciales ni datos de cuenta en este paquete.**

Para reproducir los resultados a partir de los datos conservados en `data/raw/` y `data/processed/` no debería ser necesario autenticarse nuevamente en GitHub.

## 9. Reproducción

El paquete está diseñado para admitir dos niveles de reproducción.

### 9.1 Reproducción desde los datos procesados

Este es el camino recomendado para reproducir los resultados reportados en la Etapa 2 sin depender de que los artefactos originales sigan disponibles en GitHub.

1. Clonar o descargar esta versión del paquete.
2. Verificar que los archivos de `data/processed/` estén presentes.
3. Ejecutar el script de análisis:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\analyze_results.ps1
```

4. Verificar los archivos generados en `results/`.
5. Confirmar que las cifras coincidan con las reportadas en la sección **Resultados preliminares reproducibles** de este README.

### 9.2 Reproducción desde los artefactos raw

Cuando los artefactos preservados de los runs estén disponibles en `data/raw/`, se podrá repetir la extracción de invocaciones antes del análisis:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\extract_agent_tools.ps1
powershell -ExecutionPolicy Bypass -File .\scripts\analyze_results.ps1
```

El extractor debe producir al menos:

```text
data/processed/agent-tool-invocations.csv
data/processed/agent-tool-summary.csv
```

El procedimiento de extracción identifica herramientas MCP mediante el patrón:

```regex
([A-Za-z0-9_-]+)\s+\(MCP:\s*([^)]+)\)
```

y herramientas locales mediante:

```regex
Running command\s+\(shell\)
```

Durante el piloto también fue necesario normalizar un problema de codificación del carácter utilizado para representar las invocaciones en el log.

## 10. Datos procesados principales

`agent-tool-invocations.csv` representa el nivel de invocación e incluye, como mínimo:

```text
Run_ID
Invocation_Order
Tool_Name
Provider
Tool_Type
Category
```

`agent-tool-summary.csv` representa el nivel de run e incluye:

```text
Run_ID
Tool_Calls
Unique_Tools
Retrieval_Calls
Processing_Calls
Modification_Calls
Unique_Tool_Names
Tool_Sequence
```

La clasificación de fallos debe conservarse en `failure-classification.csv`, incluyendo el `run_id`, tipo/etapa del fallo, evidencia observada y si la actividad instrumental del agente era observable.

## 11. Alcance y limitaciones de reproducción

Este paquete reproduce los **resultados preliminares del caso piloto** y no pretende representar todavía el estudio completo sobre diez repositorios.

La disponibilidad futura de logs y artefactos en GitHub no está garantizada; por esta razón, la reproducción principal debe comenzar desde los datos preservados dentro del paquete.

El contenido completo del script histórico original de extracción no quedó registrado durante el piloto. La versión consolidada incluida en `scripts/` debe validarse comparando sus salidas con los CSV y resultados reportados en esta entrega.

Los 15 runs fallidos del piloto corresponden principalmente a fallos de infraestructura, autenticación o inferencia previos a la actividad instrumental. Por ello, no se utilizan para concluir que determinados patrones de herramientas causen éxito o fallo.
