class McpFingerstring < Formula
  desc "MCP server for FingerString task management"
  homepage "https://github.com/mredig/MCP-FingerString"
  license "MIT"
  head "https://github.com/mredig/MCP-FingerString.git", branch: "main"

  on_macos do
    url "https://github.com/mredig/MCP-FingerString/releases/download/0.0.3/mcp-fingerstring-macos.tar.gz"
    sha256 "3ef2cbf8d88b8bbbfd7ae25d395e9ba156d92187ffa33a3fc4aacd7443d3da12"
  end

  on_linux do
    url "https://github.com/mredig/MCP-FingerString/releases/download/0.0.3/mcp-fingerstring-linux.tar.gz"
    sha256 "2eb3f34b788f76018cd4b6b9ba5350722fa66c8fa8318a1c2af657624f2a535e"
  end

  def install
    bin.install "mcp-fingerstring"
  end

  test do
    assert_predicate bin/"mcp-fingerstring", :exist?
    assert_predicate bin/"mcp-fingerstring", :executable?
  end
end
