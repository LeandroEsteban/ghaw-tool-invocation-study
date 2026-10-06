# Metodología operacional del caso piloto

## Caso

- Repositorio: `apache/cloudstack`
- Workflow: `Daily Issue Triage`
- Workflow ID: `297795967`
- Unidad primaria: run.
- Unidad secundaria: invocación de herramienta dentro de un run.

## Definición de tool call

Se contabiliza como invocación de herramienta una acción explícitamente emitida por el agente y registrada en los artefactos de ejecución del agente. Se incluyen herramientas MCP y herramientas locales de ejecución cuando es posible identificar la herramienta y su llamada.

No se contabilizan como tool calls del agente las llamadas internas generadas posteriormente por guards, gateways u otros componentes de infraestructura.

Ejemplo:

```text
Agente -> search_issues -> guard -> search_repositories -> backend
```

Cuenta `search_issues`. No cuenta `search_repositories` como una decisión adicional del agente.

## Fuente primaria

`agent-stdio.log`.

## Evidencia auxiliar

- `mcp-logs/rpc-messages.jsonl`
- `mcp-logs/mcp-gateway.log`
- `agent_output.json`
- `github_rate_limits.jsonl`

## Categorías

### Retrieval

Acciones que recuperan o consultan información sin modificar estado externo.

- `search_issues`
- `list_label`
- `issue_read`
- `list_issues`

### Processing/Execution

Acciones de procesamiento o ejecución local.

- `shell`

### Modification

Acciones que modifican el estado externo.

- `add_labels`
- `add_comment`

## Fallos

Los fallos se separan de acuerdo con la etapa observada:

- `setup/install`
- `agent_model_inference` / HTTP 429
- `provider_authentication` / HTTP 401

Los errores previos a una trayectoria instrumental comparable no se interpretan como evidencia de que los agentes fallidos "usan menos herramientas".
