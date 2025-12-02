class McpWebreader < Formula
  desc "MCP server for web reading with JS rendering, caching, and search - handles dynamic sites that break built-in fetch"
  homepage "https://github.com/mredig/MCP-WebReader"
  url "https://github.com/mredig/MCP-WebReader/releases/download/0.1.6/mcp-webreader-macos.tar.gz"
  sha256 "0a8d3a1001b4ed577521d9f75e1e491a05fe587b23e8807b2d231a38a79f9d3d"
  license "MIT"
  head "https://github.com/mredig/MCP-WebReader.git", branch: "main"

  def install
    bin.install "mcp-webreader"
  end

  test do
    output = shell_output("#{bin}/mcp-webreader --help 2>&1")
    assert_match "USAGE:", output
  end
end