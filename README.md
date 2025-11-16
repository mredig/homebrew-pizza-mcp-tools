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

## Usage

After installation, the tools are available as executables:

```bash
mcp-webreader --help
```

Refer to each tool's repository for detailed usage instructions and MCP integration.
