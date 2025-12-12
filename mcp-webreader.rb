class McpWebreader < Formula
  desc "MCP server for web reading with JS rendering, caching, and search - handles dynamic sites that break built-in fetch"
  homepage "https://github.com/mredig/MCP-WebReader"
  url "https://github.com/mredig/MCP-WebReader/releases/download/0.2.0/mcp-webreader-macos.tar.gz"
  sha256 "5ecadfff30f23c91fe3b9dee75b2348a31cb520673320d97fa04a4d0ee961486"
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