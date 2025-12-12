class McpWebreader < Formula
  desc "MCP server for web reading with JS rendering, caching, and search - handles dynamic sites that break built-in fetch"
  homepage "https://github.com/mredig/MCP-WebReader"
  url "https://github.com/mredig/MCP-WebReader/releases/download/0.3.0b3/mcp-webreader-macos.tar.gz"
  sha256 "514a5844efce04f4e79cc002cb592ab71ff059e332d965260c9a067abe46ec2a"
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