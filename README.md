# Pizza MCP Tools

Homebrew tap for MCP (Model Context Protocol) tools.

## Why These Tools?

Modern web applications rely heavily on JavaScript rendering, which can be challenging for basic HTTP fetch approaches. This tap provides specialized web tools designed to handle these scenarios, offering improvements over some built-in MCP client capabilities:

- **JavaScript rendering** - Executes JavaScript and waits for DOM stability, ensuring complete content extraction from SPAs (React, Vue, etc.)
- **Smart pagination** - Fetch large pages in manageable chunks (default: 2,500 chars) to preserve AI context
- **Intelligent caching** - Dramatically faster repeated requests
- **Integrated search** - Search within pages and across the web with multiple engines
- **Symbiotic workflow** - Tools share cache and work together: discover URLs → read content → search within

**Real-world impact:** Sites like Google Search that might yield 166 characters with basic fetch return 7,345 characters with JS rendering. Reddit returns 16KB of actual content instead of 3KB of skeleton HTML.

## Installation

Add this tap:

```bash
brew tap mredig/pizza-mcp-tools
```

## Available Formulae

### mcp-webreader

Swift-based MCP server for web content reading, designed for modern JavaScript-heavy web applications and large webpages that destroy ai contexts.

**Install:**
```bash
brew install mcp-webreader
```

**Features:**
- **JavaScript rendering** - WKWebView with DOM stability detection for dynamic sites
- **Three specialized tools:**
  - `fetch-page` - Fetch and paginate web content
  - `search-page` - Search within webpages with character position results
  - `search-web` - Multi-engine web search (Google, DuckDuckGo, Bing, Brave)
- **Smart pagination** - Default 2,500 char chunks, customizable offset/limit
- **Shared caching** - All tools benefit from cached content
- **HTTP customization** - Custom headers, user agents, any HTTP method
- **Link extraction** - With optional same-site filtering

**Performance:**
- Fresh fetch (no JS): ~0.3s
- Fresh fetch (with JS): ~2.6s  
- Cached fetch: ~0.04s (7-26x faster)

**Repository:** https://github.com/mredig/MCP-WebReader

### mcp-zedchat

Swift-based MCP server for searching and accessing Zed editor chat history.

**Install:**
```bash
brew install mcp-zedchat
```

**Features:**
- **Four specialized tools:**
  - `zed-list-threads` - List threads with optional date filtering
  - `zed-get-message` - Get specific message with character-level pagination
  - `zed-search-threads` - Search thread titles/summaries
  - `zed-search-thread-content` - Search within messages with limited context
- **Token-efficient** - Returns snippets with context, not full conversations
- **Smart caching** - Caches decompressed thread content (zstd compression)
- **Message indexing** - Access messages by index for stable retrieval
- **Date filtering** - Filter threads by update date range

**Performance:**
- Handles searches across 299 threads with 9K+ messages
- Cache eliminates repeated decompression (~1.7s for all threads)
- String matching instead of regex for fast searches

**Repository:** https://github.com/mredig/MCP-ZedChat

### fingerstring

Swift-based CLI tool for task list management with support for subtasks, notes, and list organization.

**Install:**
```bash
brew install fingerstring
```

**Features:**
- **Task management** - Create, edit, delete, and complete tasks
- **Subtasks** - Organize tasks hierarchically with unlimited nesting
- **Notes** - Add detailed notes to tasks and lists
- **List organization** - Create and manage multiple task lists
- **CLI commands:**
  - `list-create`, `list-view`, `list-delete`, `list-all` - List management
  - `task-add`, `task-view`, `task-edit`, `task-delete`, `task-complete` - Task management
- **Persistent storage** - Tasks stored in SQLite database

**Repository:** https://github.com/mredig/FingerString

### mcp-fingerstring

Swift-based MCP server exposing FingerString task management as an MCP interface. LLMs can use the mcp and users can track via the cli tool externally from the llm.

**Install:**
```bash
brew install mcp-fingerstring
```

**Features:**
- **Task tools:**
  - `task-view` - View task details and subtasks
  - `task-edit` - Edit task label or note
  - `task-add` - Add tasks to lists or as subtasks
  - `task-delete` - Delete tasks
  - `task-complete` - Mark tasks complete/incomplete
- **List tools:**
  - `list-view` - View list with recursive subtask display
  - `list-create` - Create new task lists
  - `list-delete` - Delete lists
  - `list-all` - Show all lists

**Repository:** https://github.com/mredig/MCP-FingerString

## Usage

After installation, the tools are available as executables:

```bash
fingerstring --help
mcp-webreader --help
mcp-zedchat --help
mcp-fingerstring --help
```

Refer to each tool's repository for detailed usage instructions and MCP integration.
