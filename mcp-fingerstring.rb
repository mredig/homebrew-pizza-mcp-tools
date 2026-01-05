class McpFingerstring < Formula
  desc "MCP server for FingerString task management"
  homepage "https://github.com/mredig/MCP-FingerString"
  url "https://github.com/mredig/MCP-FingerString/releases/download/0.0.0/mcp-fingerstring-macos.tar.gz"
  sha256 "PLACEHOLDER_SHA256_MACOS"
  license "MIT"
  head "https://github.com/mredig/MCP-FingerString.git", branch: "main"

  on_macos do
    url "https://github.com/mredig/MCP-FingerString/releases/download/0.0.0/mcp-fingerstring-macos.tar.gz"
    sha256 "PLACEHOLDER_SHA256_MACOS"
  end

  on_linux do
    url "https://github.com/mredig/MCP-FingerString/releases/download/0.0.0/mcp-fingerstring-linux.tar.gz"
    sha256 "PLACEHOLDER_SHA256_LINUX"
  end

  def install
    bin.install "mcp-fingerstring"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcp-fingerstring --help 2>&1")
  end
end
