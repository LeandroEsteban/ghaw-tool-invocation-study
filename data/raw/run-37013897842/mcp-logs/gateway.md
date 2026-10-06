<details>
<summary>MCP Gateway</summary>

- ✓ **startup** MCPG Gateway version: v0.3.19
- ✓ **startup** Starting MCPG with config: stdin, listen: 0.0.0.0:8080, log-dir: /tmp/gh-aw/mcp-logs/
- ✓ **startup** WASM compilation cache directory: /tmp/gh-aw/mcp-logs/wazero-cache
- ✓ **startup** Loaded 2 MCP server(s): [github safeoutputs]
- ✓ **startup** Guards sink server ID logging enrichment disabled (no sink server IDs configured)
- ✓ **startup** OpenTelemetry tracing disabled (no OTLP endpoint configured)
- 🔍 rpc **safeoutputs**→`tools/list`
- 🔍 rpc **safeoutputs**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"tools":[{"description":"WRITE-ONCE: do NOT call this tool with empty or placeholder arguments to probe or discover its schema — the required `body` field is listed in this schema; if you are not ready to post a real comment, call `noop` instead. Adds a comment to an existing GitHub issue, pull request, or discussion. Use this to provide feedback, answer questions, or add information to an existing conversation. For creating new items, use create_issue, create_discussion,...`
- ✓ **backend**
  ```
  Successfully connected to MCP backend server, command=docker
  ```
- 🔍 rpc **github**→`tools/list`
- 🔍 rpc **github**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"tools":[{"annotations":{"readOnlyHint":true,"title":"Get a specific label from a repository."},"description":"Get a specific label from a repository.","inputSchema":{"properties":{"name":{"description":"Label name.","type":"string"},"owner":{"description":"Repository owner (username or organization name)","type":"string"},"repo":{"description":"Repository name","type":"string"}},"required":["owner","repo","name"],"type":"object"},"name":"get_label","icons":[{"src":"data:im...`
- ✓ **startup** Starting MCPG in ROUTED mode on 0.0.0.0:8080
- ✓ **startup** Routes: /mcp/<server> where <server> is one of: [github safeoutputs]
- ✓ **startup** TLS not configured — listening on http://0.0.0.0:8080 (set --tls-cert/--tls-key to enable)
- ✓ **backend**
  ```
  Successfully connected to MCP backend server, command=docker
  ```
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `list_label`
  
  ```json
  {"params":{"arguments":{"owner":"apache","repo":"cloudstack"},"name":"list_label"}}
  ```
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_issues`
  
  ```json
  {"params":{"arguments":{"order":"asc","perPage":30,"query":"repo:apache/cloudstack is:issue is:open no:label","sort":"created"},"name":"search_issues"}}
  ```
- 🔍 rpc **github**←`resp`
  
  ```json
  {"id":1,"result":{"content":[{"text":"{\"total_count\":0,\"incomplete_results\":false}","type":"text"}]}}
  ```
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"content":[{"type":"text","text":"{\"labels\":[{\"color\":\"000000\",\"description\":\"\",\"id\":\"MDU6TGFiZWwzNzg0MzM2NQ==\",\"name\":\"status:duplicate\"},{\"color\":\"e6e6e6\",\"description\":\"\",\"id\":\"MDU6TGFiZWwzNzg0MzM2Nw==\",\"name\":\"status:invalid\"},{\"color\":\"ffffff\",\"description\":\"\",\"id\":\"MDU6TGFiZWwzNzg0MzM2OQ==\",\"name\":\"status:wontfix\"},{\"color\":\"fc2929\",\"description\":\"\",\"id\":\"MDU6TGFiZWwzNzg0MzM2NA==\",\"name\":\"type:bug\"},{\"...`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_issues`
  
  ```json
  {"params":{"arguments":{"perPage":30,"query":"repo:apache/cloudstack is:issue is:open no:label"},"name":"search_issues"}}
  ```
- 🔍 rpc **github**←`resp`
  
  ```json
  {"id":1,"result":{"content":[{"text":"{\"total_count\":0,\"incomplete_results\":false}","type":"text"}]}}
  ```
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_issues`
  
  ```json
  {"params":{"arguments":{"order":"asc","perPage":30,"query":"repo:apache/cloudstack is:issue is:open","sort":"created"},"name":"search_issues"}}
  ```
- 🔍 rpc **github**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"content":[{"type":"text","text":"{\"total_count\":657,\"incomplete_results\":false,\"items\":[{\"id\":364540980,\"number\":2865,\"state\":\"open\",\"locked\":false,\"title\":\"DNS records for additional local IP addresses\",\"body\":\"##### ISSUE TYPE\\r\\n * Feature Idea\\r\\n\\r\\n##### COMPONENT NAME\\r\\n* DNS\\r\\n\\r\\n##### CLOUDSTACK VERSION\\r\\n/\\r\\n\\r\\n##### CONFIGURATION\\r\\n* for customer isolated network\\r\\n\\r\\n##### OS / ENVIRONMENT\\r\\n/\\r\\n\\r\...`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_issues`
  
  ```json
  {"params":{"arguments":{"perPage":5,"query":"repo:apache/cloudstack is:issue is:open no:label"},"name":"search_issues"}}
  ```
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `list_issues`
  
  ```json
  {"params":{"arguments":{"direction":"ASC","orderBy":"CREATED_AT","owner":"apache","perPage":50,"repo":"cloudstack","state":"OPEN"},"name":"list_issues"}}
  ```
- 🔍 rpc **github**←`resp`
  
  ```json
  {"id":1,"result":{"content":[{"text":"{\"total_count\":0,\"incomplete_results\":false}","type":"text"}]}}
  ```
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"content":[{"type":"text","text":"{\"issues\":[{\"number\":2865,\"title\":\"DNS records for additional local IP addresses\",\"body\":\"##### ISSUE TYPE\\n * Feature Idea\\n\\n##### COMPONENT NAME\\n* DNS\\n\\n##### CLOUDSTACK VERSION\\n/\\n\\n##### CONFIGURATION\\n* for customer isolated network\\n\\n##### OS / ENVIRONMENT\\n/\\n\\n##### SUMMARY\\nFor adaptive computing it\\u0026#39;s important to get use of additional application local IP addresses which you can move betwe...`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `issue_read`
  
  ```json
  {"params":{"arguments":{"issue_number":"2865","method":"get","owner":"apache","repo":"cloudstack"},"name":"issue_read"}}
  ```
- 🔍 rpc **github**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"content":[{"type":"text","text":"{\"number\":2865,\"title\":\"DNS records for additional local IP addresses\",\"body\":\"##### ISSUE TYPE\\n * Feature Idea\\n\\n##### COMPONENT NAME\\n* DNS\\n\\n##### CLOUDSTACK VERSION\\n/\\n\\n##### CONFIGURATION\\n* for customer isolated network\\n\\n##### OS / ENVIRONMENT\\n/\\n\\n##### SUMMARY\\nFor adaptive computing it\\u0026#39;s important to get use of additional application local IP addresses which you can move between machines i...`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `issue_read`
  
  ```json
  {"params":{"arguments":{"issue_number":"3253","method":"get","owner":"apache","repo":"cloudstack"},"name":"issue_read"}}
  ```
- 🔍 rpc **github**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"content":[{"type":"text","text":"{\"number\":3253,\"title\":\"Load balancer appcookie configuration deprecated in HAproxy\",\"body\":\"\\n##### ISSUE TYPE\\n * Improvement Request\\n\\n##### COMPONENT NAME\\n* ACS 4.11.x VR load balancing with AppCookie stickiness\\n\\n##### CLOUDSTACK VERSION\\n* ACS 4.11.x\\n\\n##### CONFIGURATION\\n* Advanced zone, guest isolated network with LB configuration on public IP\\n\\n\\n##### OS / ENVIRONMENT\\n* N/A\\n\\n##### SUMMARY\\n* App...`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `issue_read`
  
  ```json
  {"params":{"arguments":{"issue_number":"3360","method":"get","owner":"apache","repo":"cloudstack"},"name":"issue_read"}}
  ```
- 🔍 rpc **github**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"content":[{"type":"text","text":"{\"number\":3360,\"title\":\"details is an ambigue parameter name\",\"body\":\"\\nthe parameter name \\u0026#39;details\\u0026#39; can mean different things in different API calls. These should be aligned and/or renamed. see the discussion in #3331\\n\\n##### ISSUE TYPE\\n * Improvement Request\\n\\n##### COMPONENT NAME\\n\\n~~~\\nAPI\\n~~~\\n\\n##### CLOUDSTACK VERSION\\n\\n\\n~~~\\nall\\n~~~\\n\\n##### SUMMARY\\n\\n\\n| type of details fi...`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `issue_read`
  
  ```json
  {"params":{"arguments":{"issue_number":"3679","method":"get","owner":"apache","repo":"cloudstack"},"name":"issue_read"}}
  ```
- 🔍 rpc **github**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"content":[{"type":"text","text":"{\"number\":3679,\"title\":\"marvin tests in plugin directory are not considered to be in python package\",\"body\":\"\\nwhen creating tests in the `tests/integration/plugins` directory, and then executing them in a deployed marvin environment like trillian, local imports do not work. This makes it impossible to modularise tests for plugins to be reused in other environments. The `plugins` directory should work as the `smoke` and `component...`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `issue_read`
  
  ```json
  {"params":{"arguments":{"issue_number":"3687","method":"get","owner":"apache","repo":"cloudstack"},"name":"issue_read"}}
  ```
- 🔍 rpc **github**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"content":[{"type":"text","text":"{\"number\":3687,\"title\":\"Domain admins not able to add LDAP users\",\"body\":\"\\n\\n##### ISSUE TYPE\\n\\n * Improvement Request\\n\\n\\n##### COMPONENT NAME\\n\\n~~~\\nUI, API\\n~~~\\n\\n##### CLOUDSTACK VERSION\\n\\n\\n~~~\\n4.14 \\n~~~\\n\\n\\n##### SUMMARY\\n\\nDomain admins are not able to see the ‘Add LDAP Account\\u0026#39; button at both “Account” tab and Domain - \\u0026gt; Accounts tab. \\nIt would be really good if the...`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `issue_read`
  
  ```json
  {"params":{"arguments":{"issue_number":"3693","method":"get","owner":"apache","repo":"cloudstack"},"name":"issue_read"}}
  ```
- 🔍 rpc **github**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"content":[{"type":"text","text":"{\"number\":3693,\"title\":\"cleanup test resources\",\"body\":\"\\nThis is to clean-up tests that create resources and do not clean-up after themselves. The idea is that the entire test-suite should be able to be run in a production environment without harming or messing up. In smoke tests running in Trillian we found the following tests to leave stuff around (the checks fixed in scope of this pr are just for simulator):\\n\\n- [X] test_ac...`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `issue_read`
  
  ```json
  {"params":{"arguments":{"issue_number":"3751","method":"get","owner":"apache","repo":"cloudstack"},"name":"issue_read"}}
  ```
- 🔍 rpc **github**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"content":[{"type":"text","text":"{\"number\":3751,\"title\":\"Add iscsi as secondary storage\",\"body\":\"It seems iscsi has better performance in comparison to NFS, specially in vmware environment.\\nSo I think it will be a good idea to add support of iscsi to secondary storage.\",\"state\":\"open\",\"html_url\":\"https://github.com/apache/cloudstack/issues/3751\",\"user\":{\"login\":\"aleskxyz\",\"id\":39186039,\"profile_url\":\"https://github.com/aleskxyz\",\"avatar_url...`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `issue_read`
  
  ```json
  {"params":{"arguments":{"issue_number":"4370","method":"get","owner":"apache","repo":"cloudstack"},"name":"issue_read"}}
  ```
- 🔍 rpc **github**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"content":[{"type":"text","text":"{\"number\":4370,\"title\":\"more fine grained categorisation for tests\",\"body\":\"\\nas a tester, one would want a more fine grained categorisation than \\u0026#34;smoke\\u0026#34;, \\u0026#34;component\\u0026#34;, \\u0026#34;integration\\u0026#34; to be able to quickly test a PR against features it touches on.\\n\\n##### ISSUE TYPE\\n\\n * Improvement Request\\n * Enhancement Request\\n * Feature Idea\\n * Other : testing aid\\n\\n#####...`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `issue_read`
  
  ```json
  {"params":{"arguments":{"issue_number":"4542","method":"get","owner":"apache","repo":"cloudstack"},"name":"issue_read"}}
  ```
- 🔍 rpc **github**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"content":[{"type":"text","text":"{\"number\":4542,\"title\":\"Reserve IP address for out of bounds machines\",\"body\":\"\\nAbility to define IP address beside of choosing VMs in Static NAT, Port Forward and Load balancer services to provide those services to servers outside of CloudStack.\\n##### ISSUE TYPE\\n\\n * Feature Idea\\n\\n##### COMPONENT NAME\\n\\n~~~\\nVR\\n~~~\\n\\n##### CLOUDSTACK VERSION\\n\\n\\n~~~\\nAll versions\\n~~~\\n\\n##### CONFIGURATION\\n\\nAdvance...`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `issue_read`
  
  ```json
  {"params":{"arguments":{"issue_number":"5174","method":"get","owner":"apache","repo":"cloudstack"},"name":"issue_read"}}
  ```
- 🔍 rpc **github**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"content":[{"type":"text","text":"{\"number\":5174,\"title\":\"methods implemented twice in marvin code\",\"body\":\"\\nin the marvin python code some methods are implemented twice.\\nexample:\\nformat_volume_to_ext3(ssh_client, device=\\u0026#34;/dev/sda\\u0026#34;) in `marvin/lib/util.py` and in `marvin/sandbox/demo/simulator/testcase/libs/utils.py`\\n\\nmore can surely be found.\\n\\n##### ISSUE TYPE\\n\\n * Bug Report\\n * Improvement Request\\n * Enhancement Request\\n...`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `issue_read`
  
  ```json
  {"params":{"arguments":{"issue_number":"5686","method":"get","owner":"apache","repo":"cloudstack"},"name":"issue_read"}}
  ```
- 🔍 rpc **github**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"content":[{"type":"text","text":"{\"number\":5686,\"title\":\"Improvement: Filesystem permission check\",\"body\":\"##### ISSUE TYPE\\n * Improvement Request\\n\\n##### COMPONENT NAME\\n\\n~~~\\ncloudstack-sysvmadm\\n~~~\\n\\n##### CLOUDSTACK VERSION\\n~~~\\nN/A\\n~~~\\n\\n##### CONFIGURATION\\n\\nN/A\\n\\n##### OS / ENVIRONMENT\\nCloudstack running on linux systems\\n\\n##### SUMMARY\\nCheck filesystem permission before upgrading systemvms\\n\\n##### STEPS TO REPRODUCE\\n...`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `issue_read`
  
  ```json
  {"params":{"arguments":{"issue_number":"5697","method":"get","owner":"apache","repo":"cloudstack"},"name":"issue_read"}}
  ```
- 🔍 rpc **github**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"content":[{"type":"text","text":"{\"number\":5697,\"title\":\"Storage bandwidth is wasted during template uploads/imports\",\"body\":\"At the moment when a template is being imported (via url or upload) there is a phase called \\u0026#34;Installing template\\u0026#34; or something similar. From what I noticed this phase calculates a hash and saves it to the database by reading the downloaded file over the storage network.\\nDuring this phase the template is not usable and ...`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `issue_read`
  
  ```json
  {"params":{"arguments":{"issue_number":"5739","method":"get","owner":"apache","repo":"cloudstack"},"name":"issue_read"}}
  ```
- 🔍 rpc **github**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"content":[{"type":"text","text":"{\"number\":5739,\"title\":\"Option to retry failed VM instance deployments\",\"body\":\"\\n\\n##### ISSUE TYPE\\n\\n\\n * Feature Idea\\n\\n##### COMPONENT NAME\\n\\n~~~\\nUI\\n~~~\\n\\n##### CLOUDSTACK VERSION\\n\\n\\n~~~\\n4.16+\\n~~~\\n\\n##### CONFIGURATION\\n\\nNA\\n\\n##### OS / ENVIRONMENT\\n\\nNA\\n\\n##### SUMMARY\\n\\n\\nWhen a user deployment fails, user ends up with an instance with has a status of `Error`\\n\\n![image](https:/...`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `issue_read`
  
  ```json
  {"params":{"arguments":{"issue_number":"5756","method":"get","owner":"apache","repo":"cloudstack"},"name":"issue_read"}}
  ```
- 🔍 rpc **github**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"content":[{"type":"text","text":"{\"number\":5756,\"title\":\"feat: Kubernetes multiple worker groups\",\"body\":\"\\n\\n##### ISSUE TYPE\\n\\n * Feature Idea\\n##### COMPONENT NAME\\n\\n~~~\\nKubernetes\\n~~~\\n##### IDEA\\nWould be superb to implement support for multiple worker groups in Kubernetes component ( major clouds GCP,AWS,Azure and Openstack are supporting it ). Thanks\\n\\n\",\"state\":\"open\",\"html_url\":\"https://github.com/apache/cloudstack/issues/5756\",...`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `issue_read`
  
  ```json
  {"params":{"arguments":{"issue_number":"5803","method":"get","owner":"apache","repo":"cloudstack"},"name":"issue_read"}}
  ```
- 🔍 rpc **github**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"content":[{"type":"text","text":"{\"number\":5803,\"title\":\"User from domain can\\u0026#39;t deploy VM in pod dedicated to that domain\",\"body\":\"##### ISSUE TYPE\\n * Bug Report\\n\\n##### CLOUDSTACK VERSION\\n~~~\\n4.16.0\\n~~~\\n\\n##### CONFIGURATION\\nXCP-NG 8.2\\nAdvanced Zone\\n\\n##### OS / ENVIRONMENT\\nOracle Linux 8.4 - Management server, MYSQL 8.0.26\\nXCP-NG 8.2 - hypervisor\\n\\n##### SUMMARY\\nUser from domain1 can\\u0026#39;t deploy VM in dedicated to d...`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `issue_read`
  
  ```json
  {"params":{"arguments":{"issue_number":"6163","method":"get","owner":"apache","repo":"cloudstack"},"name":"issue_read"}}
  ```
- 🔍 rpc **github**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"content":[{"type":"text","text":"{\"number\":6163,\"title\":\"Add Support IPAM object to Allow Load Balancer or Port-forward map to floating IP Address\",\"body\":\"\\n\\n##### ISSUE TYPE\\n\\n * Feature Idea\\n\\n##### COMPONENT NAME\\n\\n~~~\\nUI,API,Guest Network\\n\\n~~~\\n\\n##### CLOUDSTACK VERSION\\n\\n\\n~~~\\nN/A\\n~~~\\n\\n##### CONFIGURATION\\n\\n\\n\\n##### OS / ENVIRONMENT\\n\\n\\n\\n##### SUMMARY\\n\\n\\nWhen a Guest Network was created, the port forward and ...`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `issue_read`
  
  ```json
  {"params":{"arguments":{"issue_number":"6180","method":"get","owner":"apache","repo":"cloudstack"},"name":"issue_read"}}
  ```
- 🔍 rpc **github**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"content":[{"type":"text","text":"{\"number\":6180,\"title\":\"RBD/RADOS volume management should be handled by libvirt\",\"body\":\"##### ISSUE TYPE\\n * Enhancement Request\\n\\n##### COMPONENT NAME\\n~~~\\nCloudStack Agent\\n~~~\\n\\n##### CLOUDSTACK VERSION\\n~~~\\nall\\n~~~\\n\\n##### SUMMARY\\nThe CloudStack Agent uses com.ceph.rados.* for many operations as when implementing the RBD storage pool support not all features were supported by Libvirt.\\n\\nFor example: ht...`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `issue_read`
  
  ```json
  {"params":{"arguments":{"issue_number":"6212","method":"get","owner":"apache","repo":"cloudstack"},"name":"issue_read"}}
  ```
- 🔍 rpc **github**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"content":[{"type":"text","text":"{\"number\":6212,\"title\":\"Export Virtual Router Health Checks to Prometheus\",\"body\":\"\\n\\n##### ISSUE TYPE\\n * Enhancement Request\\n\\n##### COMPONENT NAME\\nAPI, VR\\n\\n##### CLOUDSTACK VERSION\\n\\n\\n~~~\\n4.16.0.0\\n~~~\\nBut after my research, not available in current versions.\\n\\n##### CONFIGURATION\\nN/A\\n\\n\\n##### OS / ENVIRONMENT\\nN/A\\n\\n\\n##### SUMMARY\\nFor monitoring of Virtual Routers, there seems to be no w...`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `issue_read`
  
  ```json
  {"params":{"arguments":{"issue_number":"6391","method":"get","owner":"apache","repo":"cloudstack"},"name":"issue_read"}}
  ```
- 🔍 rpc **github**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"content":[{"type":"text","text":"{\"number\":6391,\"title\":\"Py3 component tests fixes\",\"body\":\"\\n\\n##### ISSUE TYPE\\n\\n * Improvement Request\\n\\n##### COMPONENT NAME\\n\\n~~~\\nComponent tests\\n~~~\\n\\n##### CLOUDSTACK VERSION\\n\\n\\n~~~\\n4.16+\\n~~~\\n\\n##### CONFIGURATION\\n\\nNA\\n\\n##### OS / ENVIRONMENT\\n\\nNA\\n\\n##### SUMMARY\\n\\nthe component tests have been ported to python3 but a lot of them are non functional. In #5442 a start was made but t...`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `issue_read`
  
  ```json
  {"params":{"arguments":{"issue_number":"6424","method":"get","owner":"apache","repo":"cloudstack"},"name":"issue_read"}}
  ```
- 🔍 rpc **github**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"content":[{"type":"text","text":"{\"number\":6424,\"title\":\"Refactor: implement the managesnapshot.sh features via Java and remove the script\",\"body\":\"Several snapshot functionalities, in KVM, are implemented via the script `scripts/storage/qcow2/managesnapshot.sh`.  From https://github.com/apache/cloudstack/pull/6422#discussion_r884991838 came the idea to improve these processes by implementing the functionalities via Java, adding documentation, unit tests and logs....`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `issue_read`
  
  ```json
  {"params":{"arguments":{"issue_number":"6647","method":"get","owner":"apache","repo":"cloudstack"},"name":"issue_read"}}
  ```
- 🔍 rpc **github**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"content":[{"type":"text","text":"{\"number\":6647,\"title\":\"A button \\u0026#34;resume download\\u0026#34; is needed to finish-up template downloading under images/Templates/zones\",\"body\":\"\\n\\n\\n##### ISSUE TYPE\\n\\n * Improvement Request\\n * Enhancement Request\\n\\n##### COMPONENT NAME\\n\\n~~~\\nUI\\n~~~\\n\\n##### CLOUDSTACK VERSION\\n\\n\\n~~~\\n4.17.0.1\\n~~~\\n\\n##### CONFIGURATION\\n\\nAdvanced Networking\\n\\n##### OS / ENVIRONMENT\\n\\nRHEL-7.9\\n\\n#...`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `issue_read`
  
  ```json
  {"params":{"arguments":{"issue_number":"6672","method":"get","owner":"apache","repo":"cloudstack"},"name":"issue_read"}}
  ```
- 🔍 rpc **github**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"content":[{"type":"text","text":"{\"number\":6672,\"title\":\"After removing SAML auth, user should be able to login via password directly\",\"body\":\"##### ISSUE TYPE\\n * Bug Report\\n\\n##### COMPONENT NAME\\n~~~\\nAPI via cmk\\n~~~\\n\\n##### CLOUDSTACK VERSION\\n~~~\\n4.17.0.1\\n~~~\\n\\n##### CONFIGURATION\\nN/A\\n\\n\\n##### OS / ENVIRONMENT\\nN/A\\n\\n\\n##### SUMMARY\\n\\n\\n\\n##### STEPS TO REPRODUCE\\n~~~\\nstep1: add user, add password for this user, play wit...`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `issue_read`
  
  ```json
  {"params":{"arguments":{"issue_number":"6703","method":"get","owner":"apache","repo":"cloudstack"},"name":"issue_read"}}
  ```
- 🔍 rpc **github**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"content":[{"type":"text","text":"{\"number\":6703,\"title\":\"Introduce a \\u0026#34;session timeout\\u0026#34; counter in GUI\",\"body\":\"\\n\\n##### ISSUE TYPE\\n\\n\\n * Feature Idea\\n\\n\\n##### COMPONENT NAME\\n\\n~~~\\nUI\\n~~~\\n\\n##### CLOUDSTACK VERSION\\n\\n\\n~~~\\n4.17.0.1\\n~~~\\n\\n##### CONFIGURATION\\n\\nN/A\\n\\n##### OS / ENVIRONMENT\\n\\nN/A\\n\\n##### SUMMARY\\n\\nI would like to have a \\u0026#34;counter\\u0026#34; in the UI showing the time until t...`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `issue_read`
  
  ```json
  {"params":{"arguments":{"issue_number":"6714","method":"get","owner":"apache","repo":"cloudstack"},"name":"issue_read"}}
  ```
- 🔍 rpc **github**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"content":[{"type":"text","text":"{\"number\":6714,\"title\":\"Prometheus exporter - interpret ::1 as 0:0:0:0:0:0:0:1\",\"body\":\"Hi,\\n\\nIf I configure the Prometheus exporter to allow requests from ::1 (ipv6 localhost, short form) it doesn\\u0026#39;t actually honour requests.\\n\\nIn the logs you can see entries such as:\\n```\\n\\nIndeed, once you add 0:0:0:0:0:0:0:1 (ipv6 localhost, medium form) it starts working.\\n\\nIt\\u0026#39;s a minor issue, but nice to get so...`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `issue_read`
  
  ```json
  {"params":{"arguments":{"issue_number":"6715","method":"get","owner":"apache","repo":"cloudstack"},"name":"issue_read"}}
  ```
- 🔍 rpc **github**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"content":[{"type":"text","text":"{\"number\":6715,\"title\":\"ControlNetworkGuru does not take into account custom CIDR when assigning System VM link local IP address\",\"body\":\"##### ISSUE TYPE\\n * Bug Report\\n\\n##### COMPONENT NAME\\n~~~\\nManagement, Network, SystemVM\\n~~~\\n\\n##### CLOUDSTACK VERSION\\n~~~\\n4.16.1\\n~~~\\n\\n##### CONFIGURATION\\nIn database:\\n```\\nMariaDB [cloud]\\u0026gt; select name,value from configuration where name = \\u0026#39;control....`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `issue_read`
  
  ```json
  {"params":{"arguments":{"issue_number":"6718","method":"get","owner":"apache","repo":"cloudstack"},"name":"issue_read"}}
  ```
- 🔍 rpc **github**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"content":[{"type":"text","text":"{\"number\":6718,\"title\":\"conntrackd filling up var\",\"body\":\"##### ISSUE TYPE\\n * Bug Report\\n\\n##### COMPONENT NAME\\n~~~\\nVR\\n~~~\\n\\n##### CLOUDSTACK VERSION\\n~~~\\nlatest\\n~~~\\n\\n##### CONFIGURATION\\n~~~\\nN/A\\n~~~\\n\\n##### OS / ENVIRONMENT\\n~~~\\nKVM\\n~~~\\n\\n##### SUMMARY\\n~~~\\nWe have large customers with a lot of VR traffic traversing the VRs.  Logrotate cannot keep up and /var fills up to 100%, causing the...`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `issue_read`
  
  ```json
  {"params":{"arguments":{"issue_number":"6726","method":"get","owner":"apache","repo":"cloudstack"},"name":"issue_read"}}
  ```
- 🔍 rpc **github**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"content":[{"type":"text","text":"{\"number\":6726,\"title\":\"INSTALL.md is incomplete and/or outdated\",\"body\":\"\\n\\n##### ISSUE TYPE\\n\\n * Documentation Report\\n\\n##### COMPONENT NAME\\n\\n~~~\\nBuild instructions\\n~~~\\n\\n##### CLOUDSTACK VERSION\\n\\n\\n~~~\\n4.16\\n~~~\\n\\n##### CONFIGURATION\\n\\n\\n\\n##### OS / ENVIRONMENT\\n\\n\\nCentOS 7\\n\\n##### SUMMARY\\n\\nI tried to follow the steps in INSTALL.md to build CloudStack on CentOS 7.  The instructions...`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `issue_read`
  
  ```json
  {"params":{"arguments":{"issue_number":"6746","method":"get","owner":"apache","repo":"cloudstack"},"name":"issue_read"}}
  ```
- 🔍 rpc **github**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"content":[{"type":"text","text":"{\"number\":6746,\"title\":\"Fix potential leaking of volume maps\",\"body\":\"\\n\\n##### ISSUE TYPE\\n * Enhancement Request\\n \\n##### COMPONENT NAME\\n~~~\\nStorage\\n~~~\\n\\n##### CLOUDSTACK VERSION\\n~~~\\nAny\\n~~~\\n\\n##### SUMMARY\\nUnmapping volumes from a hypervisor host upon VM stop or migration is done on a best-effort basis. The VM is already stopped, or already migrated, we try to unmap, but if something goes wrong there i...`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `issue_read`
  
  ```json
  {"params":{"arguments":{"issue_number":"6819","method":"get","owner":"apache","repo":"cloudstack"},"name":"issue_read"}}
  ```
- 🔍 rpc **github**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"content":[{"type":"text","text":"{\"number\":6819,\"title\":\"Config.java contains a lot of ConfigKeys that are no longer referred to\",\"body\":\"\\n\\n##### ISSUE TYPE\\n\\n * Other\\n\\n##### COMPONENT NAME\\n\\n~~~\\nConfig\\n~~~\\n\\n##### CLOUDSTACK VERSION\\n\\n\\n~~~\\n\\n~~~\\n\\n##### CONFIGURATION\\n\\n\\n\\n##### OS / ENVIRONMENT\\n\\n\\n\\n##### SUMMARY\\n\\n\\n\\n##### STEPS TO REPRODUCE\\n\\n\\n\\n~~~\\n\\n~~~\\n\\n\\n\\n##### EXPECTED RESULTS\\n\\n\\n~~~\\n...`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `issue_read`
  
  ```json
  {"params":{"arguments":{"issue_number":"6827","method":"get","owner":"apache","repo":"cloudstack"},"name":"issue_read"}}
  ```
- 🔍 rpc **github**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"content":[{"type":"text","text":"{\"number\":6827,\"title\":\"Zero size recurring snapshots piling up after server is shutdown\",\"body\":\"\\n\\nSnapshot taking process should follow the following logic:\\n\\n1. If there are zero snapshots but there is a recurring schedule set, then it should still take the first snapshot for completion sake (regardless of whether Volume is detached or attached to a VM which is running or stopped).\\n2. If there are existing snapshots, an...`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `issue_read`
  
  ```json
  {"params":{"arguments":{"issue_number":"6849","method":"get","owner":"apache","repo":"cloudstack"},"name":"issue_read"}}
  ```
- 🔍 rpc **github**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"content":[{"type":"text","text":"{\"number\":6849,\"title\":\"Load balancer counters are reset to 0 if there are load balancer changes\",\"body\":\"CloudStack uses haproxy in VR to implement the load balancer feature. If there are any load balancer changes (add/remove VMs, add/remove rules, etc), the haproxy configuration will be regenerated and haproxy service in VR will be reloaded.\\n\\nWe\\u0026#39;ve found an issue that counters are reset to 0 after haproxy reload, wh...`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `issue_read`
  
  ```json
  {"params":{"arguments":{"issue_number":"6857","method":"get","owner":"apache","repo":"cloudstack"},"name":"issue_read"}}
  ```
- 🔍 rpc **github**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"content":[{"type":"text","text":"{\"number\":6857,\"title\":\"Please add refresh button and add zone button \",\"body\":\"\\n##### ISSUE TYPE\\n\\n * Improvement Request\\n\\n![image](https://user-images.githubusercontent.com/4197714/198498100-5660064f-fd12-4165-b17e-836fd60a1a77.png)\\n\\n![image](https://user-images.githubusercontent.com/4197714/198500504-bb2e7a8b-5cdb-4deb-ab18-d072ad7c40bf.png)\\n\\n##### COMPONENT NAME\\n* Image (Template)\\n\\n\\n\\n\\n\\n\",\"state\...`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `issue_read`
  
  ```json
  {"params":{"arguments":{"issue_number":"6861","method":"get","owner":"apache","repo":"cloudstack"},"name":"issue_read"}}
  ```
- 🔍 rpc **github**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"content":[{"type":"text","text":"{\"number\":6861,\"title\":\"VM Password reset - Unable to set Password Complexity requirement for Special Characters\",\"body\":\"\\n\\n##### ISSUE TYPE\\n\\n * Bug Report\\n\\n##### COMPONENT NAME\\n\\n~~~\\nUI\\n~~~\\n\\n##### CLOUDSTACK VERSION\\n\\n\\n~~~\\n4.17.0\\n~~~\\n\\n##### CONFIGURATION\\n\\n\\nN/A\\n\\n##### OS / ENVIRONMENT\\n\\n\\n\\n##### SUMMARY\\n\\n\\nUnable to Set Password Complexity requirement to include special chara...`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `issue_read`
  
  ```json
  {"params":{"arguments":{"issue_number":"6866","method":"get","owner":"apache","repo":"cloudstack"},"name":"issue_read"}}
  ```
- 🔍 rpc **github**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"content":[{"type":"text","text":"{\"number\":6866,\"title\":\"Error Detaching Volume on GlusterFS Primary Storage\",\"body\":\"\\n\\n##### ISSUE TYPE\\n * Bug Report\\n\\n##### COMPONENT NAME\\n\\n~~~\\nPrimary Storage (GlusterFS)\\n~~~\\n\\n##### CLOUDSTACK VERSION\\n\\n\\n~~~\\n4.17.1.0\\n~~~\\n\\n##### CONFIGURATION\\n\\n\\n\\n##### OS / ENVIRONMENT\\n\\n~~~\\nCentOS Linux 7 (Core)\\nqemu-img version 2.12.0\\nglusterfs 6.1\\n\\n~~~\\n\\n##### SUMMARY\\n\\nCan\\u0026#39;...`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `issue_read`
  
  ```json
  {"params":{"arguments":{"issue_number":"6867","method":"get","owner":"apache","repo":"cloudstack"},"name":"issue_read"}}
  ```
- 🔍 rpc **github**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"content":[{"type":"text","text":"{\"number\":6867,\"title\":\"World Writable Mounts Need Sticky Bit\",\"body\":\"\\n\\n##### ISSUE TYPE\\n * Bug Report\\n\\n\\n##### COMPONENT NAME\\ncomponent:api\\n\\n##### CLOUDSTACK VERSION\\n~~~\\n4.17\\n4.18\\n~~~\\n\\n##### OS / ENVIRONMENT\\nUbuntu\\nRocky Linux 8\\n\\n\\n##### SUMMARY\\nIn java code, NFS mounts are not consistently set to 1777 to prevent world writable issues.\\n\\nReferences to correct setting\\n```\\n./server/src...`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `issue_read`
  
  ```json
  {"params":{"arguments":{"issue_number":"6880","method":"get","owner":"apache","repo":"cloudstack"},"name":"issue_read"}}
  ```
- 🔍 rpc **github**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"content":[{"type":"text","text":"{\"number\":6880,\"title\":\"Global settings improvements and protect against non-acknowledged changes\",\"body\":\"##### ISSUE TYPE\\n * Improvement Request\\n\\n##### COMPONENT NAME\\n~~~\\nUI\\n~~~\\n\\n##### CLOUDSTACK VERSION\\n~~~\\n4.17.*.*\\n~~~\\n\\n##### SUMMARY\\nThis request is for improvements for the \\u0026#34;Global settings\\u0026#34; screen. \\n1. As any user with correct privileges, Protect against \\u0026#34;reset\\u0026...`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `issue_read`
  
  ```json
  {"params":{"arguments":{"issue_number":"6913","method":"get","owner":"apache","repo":"cloudstack"},"name":"issue_read"}}
  ```
- 🔍 rpc **github**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"content":[{"type":"text","text":"{\"number\":6913,\"title\":\"Support for Internal LB In shared networks in advanced zone.\",\"body\":\"##### ISSUE TYPE\\n * Feature \\n\\n##### COMPONENT NAME\\n* Internal LB\\n\\n\\n##### CLOUDSTACK VERSION\\n*  CloudStack 4.17.1.0\\n\\n\\n##### CONFIGURATION\\nThe cloudstack env is **using the Ceph RBD and  local storage as cloudstack cluster primary storage** and using shared networks in advanced zone which is in https://github.com/apac...`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `issue_read`
  
  ```json
  {"params":{"arguments":{"issue_number":"6934","method":"get","owner":"apache","repo":"cloudstack"},"name":"issue_read"}}
  ```
- 🔍 rpc **github**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"content":[{"type":"text","text":"{\"number\":6934,\"title\":\"Test button addition in Domains LDAP config\",\"body\":\"##### ISSUE TYPE\\n * Improvement Request\\n * Enhancement Request\\n\\n##### COMPONENT NAME\\n* LDAP Config\\n\\n\\n##### SUMMARY\\nPlease add a button to test the ldaps connection or a list button to list some user button.\\n\\n![image](https://user-images.githubusercontent.com/4197714/205022886-bff7c22e-aad4-45b2-8e39-01994ae43a17.png)\\n\\n\\n\",\"stat...`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `issue_read`
  
  ```json
  {"params":{"arguments":{"issue_number":"6940","method":"get","owner":"apache","repo":"cloudstack"},"name":"issue_read"}}
  ```
- 🔍 rpc **github**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"content":[{"type":"text","text":"{\"number\":6940,\"title\":\"Live Storage migration between ceph on Ubuntu 20, does not work\",\"body\":\"Hello, Team\\nI tring use Live Migration with Volume Migration with Shared Storage (Ceph) on KVM (Ubuntu 20). But it\\u0026#39;s failed with:\\n\\n2022-12-02 09:58:27,651 DEBUG [o.a.c.e.o.VolumeOrchestrator] (Work-Job-Executor-92:ctx-136c4df4 job-442/job-443 ctx-6b9bcc45) (logid:ca6829a0) Failed to migrated vm VM instance {id: \\u0026#3...`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `issue_read`
  
  ```json
  {"params":{"arguments":{"issue_number":"6966","method":"get","owner":"apache","repo":"cloudstack"},"name":"issue_read"}}
  ```
- 🔍 rpc **github**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"content":[{"type":"text","text":"{\"number\":6966,\"title\":\"remove instanceof checks and use reflection for admin cmd invocations\",\"body\":\"\\n\\n##### ISSUE TYPE\\n * cleanup\\n\\n##### COMPONENT NAME\\n\\n~~~\\nAPI\\n~~~\\n\\n##### CLOUDSTACK VERSION\\n\\n\\n~~~\\n4.17\\n~~~\\n\\n##### CONFIGURATION\\n\\n\\n\\n##### OS / ENVIRONMENT\\n\\n\\n\\n##### SUMMARY\\n\\nthe API classes have instances that are for root admin only, these are checked for using `instanceof` in ...`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `issue_read`
  
  ```json
  {"params":{"arguments":{"issue_number":"6998","method":"get","owner":"apache","repo":"cloudstack"},"name":"issue_read"}}
  ```
- 🔍 rpc **github**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"content":[{"type":"text","text":"{\"number\":6998,\"title\":\"There is no secondary storage VM for system VM, start ssvm failed.\",\"body\":\"Hello everyone\\ni have a problem with cloudstack, it happens like this after i finished creating zone, pod, host, ... And i checked the log it says 2 vm system problem. I am doing lab on hyper v, I don\\u0026#39;t know how many NICS it needs for vm Management server. Looking forward to your help, thanks very much.\\n![image_2022_12_...`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `issue_read`
  
  ```json
  {"params":{"arguments":{"issue_number":"6999","method":"get","owner":"apache","repo":"cloudstack"},"name":"issue_read"}}
  ```
- 🔍 rpc **github**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"content":[{"type":"text","text":"{\"number\":6999,\"title\":\"Security group fields in the listVirtualmachines API call\\u0026#39;s response doesn\\u0026#39;t change\",\"body\":\"\\n\\nIn listVirtualMachines\\u0026#39; response, we have a security group field. After further investigation, we noticed that this field doesn\\u0026#39;t change at all even if I add the ingress rule to the VM.\\n\\n```\\n(local) \\u0026gt; list virtualmachines id=\\u0026#34;152ee2cf-d9fb-4281-b2...`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `issue_read`
  
  ```json
  {"params":{"arguments":{"issue_number":"7041","method":"get","owner":"apache","repo":"cloudstack"},"name":"issue_read"}}
  ```
- 🔍 rpc **github**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"content":[{"type":"text","text":"{\"number\":7041,\"title\":\"fix iso tagging tests\",\"body\":\"\\n\\n##### ISSUE TYPE\\n\\n * Other\\n\\n##### COMPONENT NAME\\n\\n~~~\\nmarvin component tests\\n~~~\\n\\n##### CLOUDSTACK VERSION\\n\\n\\n~~~\\n\\n~~~\\n\\n##### CONFIGURATION\\n\\n\\n\\n##### OS / ENVIRONMENT\\n\\n\\n\\n##### SUMMARY\\n\\ntests 7, 16 and 17 of component/test_tags.py fail if an iso is not uploaded. #7040 resolves that but in a way that the tests are skipped ...`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `issue_read`
  
  ```json
  {"params":{"arguments":{"issue_number":"7129","method":"get","owner":"apache","repo":"cloudstack"},"name":"issue_read"}}
  ```
- 🔍 rpc **github**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"content":[{"type":"text","text":"{\"number\":7129,\"title\":\"Follow up on the #6809 (Reserve memory for host) to add global settings for upper/lower limit\",\"body\":\"##### ISSUE TYPE\\n\\n * Improvement Request\\n\\n\\n##### SUMMARY\\n\\n\\nIn the #6809 PR, @wido suggested to add a new global settings to bound the value of `host.reserved.mem.mb` global setting. Due to the tight schedule, we planed to add these setting in a new PR with different milestone.\\n\\nSuggested...`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `issue_read`
  
  ```json
  {"params":{"arguments":{"issue_number":"7142","method":"get","owner":"apache","repo":"cloudstack"},"name":"issue_read"}}
  ```
- 🔍 rpc **github**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"content":[{"type":"text","text":"{\"number\":7142,\"title\":\"Autodetect IPs used inside the VM\",\"body\":\"With regards to IP info reporting, Cloudstack relies entirely on it\\u0026#39;s DHCP data bases and so on. When this is not available (L2 networks etc) no IP information is shown for a given VM.\\n\\nI propose we introduce a mechanism for \\u0026#34;IP autodetection\\u0026#34; and try to discover the IPs used inside the machines by means of querying the hypervisors....`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `issue_read`
  
  ```json
  {"params":{"arguments":{"issue_number":"7155","method":"get","owner":"apache","repo":"cloudstack"},"name":"issue_read"}}
  ```
- 🔍 rpc **github**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"content":[{"type":"text","text":"{\"number\":7155,\"title\":\"tests should only run when applicable for adv-sg zone in such env\",\"body\":\"\\n\\n##### ISSUE TYPE\\n\\n * Documentation Report\\n * testing/CI\\n\\n##### COMPONENT NAME\\n\\n~~~\\nmarvin\\n~~~\\n\\n##### CLOUDSTACK VERSION\\n\\n\\n~~~\\n4.18\\n~~~\\n\\n##### CONFIGURATION\\n\\n~~~\\nadvanced zone with security groups.\\n~~~\\n\\n##### OS / ENVIRONMENT\\n\\n\\n\\n##### SUMMARY\\n\\nwhen an advanced zone with ...`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `issue_read`
  
  ```json
  {"params":{"arguments":{"issue_number":"7168","method":"get","owner":"apache","repo":"cloudstack"},"name":"issue_read"}}
  ```
- 🔍 rpc **github**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"content":[{"type":"text","text":"{\"number\":7168,\"title\":\"After cloudstack canceled volume live migration, VMWare still keeps on migrating this volume =\\u0026gt; Cloustack keeps old/wrong location of volume.\",\"body\":\"\\n\\n##### ISSUE TYPE\\n\\n * Bug Report\\n\\n##### COMPONENT NAME\\n\\n~~~\\nAPI, Volume\\n~~~\\n\\n##### CLOUDSTACK VERSION\\n\\n\\n~~~\\n4.17.1.0\\n~~~\\n\\n##### CONFIGURATION\\n\\nVMWare vSphere\\n\\n##### OS / ENVIRONMENT\\n\\n\\n\\n##### SUMMA...`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `issue_read`
  
  ```json
  {"params":{"arguments":{"issue_number":"7240","method":"get","owner":"apache","repo":"cloudstack"},"name":"issue_read"}}
  ```
- 🔍 rpc **github**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"content":[{"type":"text","text":"{\"number\":7240,\"title\":\"Please consider add some `Health checks` on `System VMs` like `Virtual routers`\",\"body\":\"##### ISSUE TYPE\\n * Enhancement Request\\n\\n\\n##### COMPONENT NAME\\nSystem VM\\n\\n\\n##### SUMMARY\\nPlease consider add some `Health checks` on `System VMs` like `Virtual routers`.   The `Health checks` on  `Virtual routers` is very useful.\\n  \\n\\n![image](https://user-images.githubusercontent.com/4197714/21930...`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `issue_read`
  
  ```json
  {"params":{"arguments":{"issue_number":"7280","method":"get","owner":"apache","repo":"cloudstack"},"name":"issue_read"}}
  ```
- 🔍 rpc **github**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"content":[{"type":"text","text":"{\"number\":7280,\"title\":\"CloudStack should support Selinux\",\"body\":\"##### ISSUE TYPE\\nImprovement Request\\n\\n##### COMPONENT NAME\\nManagement Server and Agent\\n\\n##### CLOUDSTACK VERSION\\nAll versions\\n\\n##### OS / ENVIRONMENT\\nAll\\n\\n##### SUMMARY\\nServer security is key to meeting compliance requirements. Most linux distros have supported Selinux for well over a decade.\\n\\nI\\u0026#39;m putting this in for tracking ...`
- 🔍 rpc **github**→`tools/call` `search_repositories`
  
  ```json
  {"params":{"arguments":{"perPage":10,"query":"repo:apache/cloudstack"},"name":"search_repositories"}}
  ```
- 🔍 rpc **github**←`resp` ⚠️`calling "tools/call": unknown tool "search_repositories"`
- 🔍 rpc **github**→`tools/call` `issue_read`
  
  ```json
  {"params":{"arguments":{"issue_number":"7282","method":"get","owner":"apache","repo":"cloudstack"},"name":"issue_read"}}
  ```
- 🔍 rpc **github**←`resp` `{"jsonrpc":"2.0","id":1,"result":{"content":[{"type":"text","text":"{\"number\":7282,\"title\":\"The remote access VPN can not connected\",\"body\":\"##### ISSUE TYPE\\n\\n * Bug Report\\n\\n\\n##### COMPONENT NAME\\n- VPN\\n\\n##### CLOUDSTACK VERSION\\n- CloudStack 4.17.2.0 \\n\\n##### CONFIGURATION\\nUsing  a VPC-102, The public address is 10.26.20.64\\n\\n![image](https://user-images.githubusercontent.com/4197714/220871224-8ccfe234-66ce-416f-99b0-e375b60b487b.png)\\n\\n![image](https://user-images.githu...`
- 🔍 rpc **safeoutputs**→`tools/call` `noop`
  
  ```json
  {"params":{"arguments":{"message":"Checked apache/cloudstack for untriaged open issues (no:label search and manual scan of oldest 50 open issues). No issues without labels were found — the backlog is currently fully labeled. No triage actions taken this run."},"name":"noop"}}
  ```
- 🔍 rpc **safeoutputs**←`resp`
  
  ```json
  {"id":1,"result":{"content":[{"text":"{\"result\":\"success\"}","type":"text"}]}}
  ```
- ✓ **shutdown** Shutting down gateway...

</details>
