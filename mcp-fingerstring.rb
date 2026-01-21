class McpFingerstring < Formula
  desc "MCP server for FingerString task management"
  homepage "https://github.com/mredig/MCP-FingerString"
  license "MIT"
  head "https://github.com/mredig/MCP-FingerString.git", branch: "main"

  on_macos do
    url "https://github.com/mredig/MCP-FingerString/releases/download/0.0.4/mcp-fingerstring-macos.tar.gz"
    sha256 "8d8cc7bf7380cffd80a7bf45443ea75df43320b28d5ee96a7efe1dc3f94e7480"
  end

  on_linux do
    url "https://github.com/mredig/MCP-FingerString/releases/download/0.0.4/mcp-fingerstring-linux.tar.gz"
    sha256 "8e2ade0621c51298b822bb7b68066f9d8d2ac9529d4ddab7c3efe030e9d8bfd1"
  end

  def install
    bin.install "mcp-fingerstring"
  end

  test do
    assert_predicate bin/"mcp-fingerstring", :exist?
    assert_predicate bin/"mcp-fingerstring", :executable?
  end
end
