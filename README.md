# ghaw-tool-invocation-study
Este repositorio contiene el paquete de réplica de la **Etapa 2** del estudio *Patrones de Invocación de Herramientas en GitHub Agentic Workflows*. Su objetivo es permitir reproducir los resultados preliminares reportados en el artículo a partir de los datos preservados del caso piloto.

> **Estado del estudio.** La evidencia presentada en esta etapa corresponde a un caso piloto sobre un único repositorio. El estudio completo proyecta ampliar el mismo procedimiento a diez repositorios.

## 1. Caso piloto

El caso piloto corresponde a:

- **Repositorio analizado:** `apache/cloudstack`
- **Workflow:** `Daily Issue Triage`
- **Workflow ID:** `297795967`
- **Unidad primaria de análisis:** ejecución individual del workflow (`run`)
- **Unidad secundaria de análisis:** invocación individual de herramienta dentro de un run

La muestra preliminar contiene **20 runs**: **5 exitosos** y **15 fallidos**. Los cinco runs exitosos fueron analizados a nivel de invocación y secuencia de herramientas; los quince runs fallidos fueron inspeccionados para caracterizar la etapa y causa del fallo.

Para efectos de reproducción, la muestra piloto queda fijada explícitamente por los 20 `run_id` incluidos en `data/processed/runs.csv`. El criterio histórico exacto que llevó a seleccionar este subconjunto durante el piloto no quedó documentado de forma completa, por lo que no se reconstruye ni se infiere retrospectivamente.

## 2. Resultados preliminares reproducibles

El paquete permite reproducir los siguientes resultados reportados en la Etapa 2:

| Resultado | Valor |
|---|---:|
| Runs analizados | 20 |
| Runs exitosos | 5 |
| Runs fallidos | 15 |
| Invocaciones en runs exitosos | 40 |
| Herramientas distintas | 7 |
| Transiciones consecutivas | 35 |

### 2.1 Frecuencia de herramientas

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

### 2.2 Frecuencia por categoría

| Categoría | Invocaciones | Porcentaje |
|---|---:|---:|
| Retrieval | 26 | 65% |
| Processing/Execution | 10 | 25% |
| Modification | 4 | 10% |

### 2.3 Transiciones más frecuentes

| Transición | Frecuencia |
|---|---:|
| `shell -> shell` | 6 |
| `list_label -> search_issues` | 5 |
| `search_issues -> search_issues` | 4 |

A nivel de categorías, las transiciones más frecuentes fueron:

- `Retrieval -> Retrieval`: 19
- `Processing/Execution -> Processing/Execution`: 6
- `Retrieval -> Processing/Execution`: 4

El resto de las transiciones se encuentra en `results/transition-frequency.csv` y `results/category-transition-frequency.csv`.

### 2.4 Fallos observados

Los 15 runs fallidos se distribuyeron de la siguiente forma:

| Tipo de fallo | Runs |
|---|---:|
| Autenticación del proveedor / HTTP 401 | 10 |
| Inferencia del modelo / HTTP 429 | 4 |
| Instalación o setup | 1 |

Los errores 401 y 429 ocurrieron antes de una trayectoria instrumental comparable con las ejecuciones exitosas. El fallo de instalación ocurrió antes de poder establecer que el agente hubiera iniciado. Por esta razón, estos casos **no se interpretan como ejecuciones donde el agente decidió no utilizar herramientas** ni se utilizan para inferir que una menor cantidad de tool calls causa el fallo.

## 3. Definición operacional de invocación de herramienta

Se considera **invocación de herramienta** una acción explícitamente emitida por el agente y registrada en sus artefactos de ejecución. Se incluyen herramientas MCP y herramientas locales de ejecución cuando puede identificarse la herramienta y su llamada.

Las operaciones auxiliares generadas posteriormente por componentes de infraestructura —por ejemplo, guards, gateways o backends— **no se contabilizan como decisiones instrumentales del agente**.

Por ejemplo, si la traza representa:

```text
Agente -> search_issues -> guard -> search_repositories -> backend
```

se contabiliza `search_issues` como invocación del agente, pero `search_repositories` no se contabiliza como una segunda decisión del agente si fue generada internamente por la infraestructura.

La fuente primaria para reconstruir las invocaciones es:

```text
agent-stdio.log
```

Los registros RPC/MCP y gateway se utilizan como evidencia auxiliar para validar llamadas o diagnosticar fallos.

## 4. Clasificación funcional

Las herramientas observadas se clasifican mediante los siguientes criterios:

- **Retrieval:** consulta o recuperación de información sin modificar el estado externo.
  - `search_issues`
  - `list_label`
  - `issue_read`
  - `list_issues`
- **Processing/Execution:** procesamiento o ejecución de comandos locales.
  - `shell`
- **Modification:** acciones que modifican el estado externo.
  - `add_labels`
  - `add_comment`

Los criterios completos se documentan en `docs/methodology.md`.

## 5. Runs del caso piloto

### 5.1 Runs exitosos

| Run ID | Fecha | Conclusion |
|---|---|---|
| `37013897842` | 2026-10-02 | success |
| `36869901112` | 2026-10-01 | success |
| `36722746868` | 2026-09-30 | success |
| `36576508937` | 2026-09-29 | success |
| `36429848934` | 2026-09-28 | success |

### 5.2 Runs fallidos

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

El inventario maestro se encuentra en `data/processed/runs.csv`. La clasificación de los 15 fallos se encuentra en `data/processed/failure-classification.csv`.

## 6. Fuentes de datos y artefactos

La identificación inicial de ejecuciones se realizó con GitHub CLI mediante:

```powershell
gh run list `
    --repo apache/cloudstack `
    --workflow 297795967 `
    --limit 100 `
    --json databaseId,conclusion,status,createdAt
```

Los datos raw se conservan en un directorio por `run_id` bajo:

```text
data/raw/run-<run_id>/
```

Entre los artefactos utilizados se encuentran, según disponibilidad:

```text
agent-stdio.log
mcp-logs/rpc-messages.jsonl
mcp-logs/mcp-gateway.log
agent_output.json
github_rate_limits.jsonl
```

`agent-stdio.log` es la fuente primaria para identificar tool calls. Los archivos RPC/MCP/gateway no se utilizan directamente como dataset principal de invocaciones porque pueden contener operaciones internas generadas por la infraestructura.

El run `35606293166` corresponde al fallo de setup/install y no contiene una traza `agent-stdio.log` comparable con los runs en que el agente sí inició.

## 7. Estructura del paquete

La estructura relevante del repositorio es:

```text
.
├── README.md
├── scripts/
│   ├── extract_agent_tools.ps1
│   ├── analyze_sequences.ps1
│   └── validate_results.ps1
├── data/
│   ├── raw/
│   │   ├── run-37013897842/
│   │   ├── run-36869901112/
│   │   ├── ...
│   │   └── run-30821613475/
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
│   ├── failure-summary.csv
│   └── pilot-summary.md
└── docs/
    ├── environment.md
    ├── methodology.md
    └── data-dictionary.md
```

## 8. Entorno

El piloto original fue realizado en Windows utilizando PowerShell y GitHub CLI. Las versiones exactas utilizadas durante la primera ejecución no quedaron registradas en ese momento.

Durante la preparación y validación del paquete se registró el siguiente entorno:

| Componente | Versión |
|---|---|
| Windows build | `10.0.26100.9444` |
| PowerShell | `5.1.26100.9444` |
| PSEdition | `Desktop` |
| GitHub CLI (`gh`) | `2.102.0` |
| GitHub Agentic Workflows (`gh aw`) | `v0.89.21` |

La autenticación de GitHub CLI estaba configurada mediante el keyring de Windows. **No se incluyen tokens, credenciales ni secretos en este paquete.**

Para reproducir los resultados a partir de los datos preservados en `data/raw/` y `data/processed/` no es necesario utilizar la cuenta original de GitHub.

Más detalles en `docs/environment.md`.

## 9. Reproducción

El paquete admite dos niveles de reproducción.

### 9.1 Reproducción del análisis desde los datos procesados

Este es el procedimiento mínimo para regenerar las frecuencias y transiciones reportadas en la Etapa 2 sin volver a extraer tool calls desde los logs.

Desde la raíz del repositorio, ejecutar en PowerShell:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\analyze_sequences.ps1
powershell -ExecutionPolicy Bypass -File .\scripts\validate_results.ps1
```

`analyze_sequences.ps1` utiliza:

```text
data/processed/agent-tool-invocations.csv
```

y regenera:

```text
results/tool-frequency.csv
results/category-frequency.csv
results/transition-frequency.csv
results/category-transition-frequency.csv
```

`validate_results.ps1` comprueba automáticamente que los resultados coincidan con los valores reportados para el piloto, entre ellos:

```text
20 runs
5 success
15 failure
40 invocaciones
7 herramientas distintas
26 Retrieval
10 Processing/Execution
4 Modification
35 transiciones
10 fallos HTTP 401
4 fallos HTTP 429
1 fallo setup/install
```

También valida las principales transiciones de herramienta y categoría.

### 9.2 Reproducción completa desde los artefactos raw

Para repetir primero la extracción desde los logs preservados y luego regenerar los resultados, ejecutar desde la raíz del repositorio:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\extract_agent_tools.ps1
powershell -ExecutionPolicy Bypass -File .\scripts\analyze_sequences.ps1
powershell -ExecutionPolicy Bypass -File .\scripts\validate_results.ps1
```

El extractor busca recursivamente archivos `agent-stdio.log` dentro de `data/raw/` e identifica el `run_id` a partir del nombre del directorio `run-<run_id>`.

El procedimiento de extracción reconoce herramientas MCP mediante el patrón:

```regex
([A-Za-z0-9_-]+)\s+\(MCP:\s*([^)]+)\)
```

y herramientas locales mediante:

```regex
Running command\s+\(shell\)
```

El extractor produce:

```text
data/processed/agent-tool-invocations.csv
data/processed/agent-tool-summary.csv
```

> **Nota de procedencia del script.** `extract_agent_tools.ps1` es una implementación reproducible consolidada a partir del procedimiento documentado durante el piloto. No se presenta como una copia bit a bit del script histórico original, cuyo contenido completo no quedó preservado. Su validez debe comprobarse mediante `validate_results.ps1` y la comparación con los resultados preservados.

## 10. Datos procesados

### `data/processed/runs.csv`

Inventario maestro de los 20 runs del caso piloto. Incluye su conclusión y, cuando corresponde, la etapa y causa resumida del fallo.

### `data/processed/agent-tool-invocations.csv`

Dataset a nivel de invocación. Incluye:

```text
Run_ID
Invocation_Order
Tool_Name
Provider
Tool_Type
Category
```

### `data/processed/agent-tool-summary.csv`

Resumen a nivel de run. Incluye:

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

### `data/processed/failure-classification.csv`

Clasificación de los 15 runs fallidos. Incluye la etapa y causa resumida del fallo, si el agente inició, si hubo intento de ejecución y si las tool calls eran observables en los artefactos disponibles.

En el fallo de setup/install, la ausencia de invocaciones observables no se registra como evidencia de que el agente haya utilizado cero herramientas; el agente no llegó a iniciar de forma comparable.

## 11. Resultados derivados

Los archivos de `results/` contienen las salidas agregadas utilizadas para comprobar las cifras del artículo:

- `tool-frequency.csv`: frecuencia y porcentaje por herramienta.
- `category-frequency.csv`: frecuencia y porcentaje por categoría.
- `transition-frequency.csv`: frecuencia de transiciones herramienta -> herramienta.
- `category-transition-frequency.csv`: frecuencia de transiciones categoría -> categoría.
- `failure-summary.csv`: resumen de los fallos observados.
- `pilot-summary.md`: síntesis legible de los resultados preliminares.

## 12. Alcance y limitaciones de reproducción

Este paquete reproduce los **resultados preliminares del caso piloto** y no pretende representar todavía el estudio completo sobre diez repositorios.

Las principales limitaciones son:

- el caso piloto corresponde a un único repositorio;
- los 15 fallos disponibles están dominados por fallos de infraestructura, autenticación o inferencia previos a una trayectoria instrumental comparable;
- el criterio histórico exacto que llevó a conformar el subconjunto piloto de 20 runs no quedó documentado completamente;
- el script histórico original de extracción no fue preservado bit a bit;
- no se conservaron las versiones exactas de todos los componentes internos del runtime de GH-AW en el momento de los runs originales.

Estas limitaciones no impiden reproducir las cifras del piloto a partir de los artefactos y datos preservados, pero restringen la generalización de los resultados.

## 13. Repositorio y versión del paquete

Repositorio de desarrollo:

```text
https://github.com/LeandroEsteban/ghaw-tool-invocation-study
```

Versión correspondiente a la entrega de Etapa 2:

```text
Tag: [COMPLETAR_TAG]
Commit: [COMPLETAR_COMMIT]
```

El commit puede obtenerse con:

```bash
git rev-parse HEAD
```

La versión publicada en Zenodo debe corresponder exactamente al tag y commit indicados arriba.

## 14. Archivo en Zenodo

DOI de la versión archivada:

```text
[COMPLETAR_DOI_ZENODO]
```

Una vez publicado el registro en Zenodo, este DOI debe coincidir con la versión identificada por el tag y commit de la sección anterior.

## 15. Estado del avance

Este paquete corresponde a la implementación mínima y resultados preliminares de la **Etapa 2**. El estudio completo ampliará el análisis a diez repositorios y aplicará el mismo procedimiento de extracción, clasificación y análisis sobre un conjunto mayor de ejecuciones.
