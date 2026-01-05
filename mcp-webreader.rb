class McpWebreader < Formula
  desc "MCP server for web reading with JS rendering, caching, and search - handles dynamic sites that break built-in fetch"
  homepage "https://github.com/mredig/MCP-WebReader"
  url "https://github.com/mredig/MCP-WebReader/releases/download/0.3.0/mcp-webreader-macos.tar.gz"
  sha256 "f5a8de25761a1f18d81e7bd2b4c4af2c9e45af135ccd3908ef22df715a251d63"
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