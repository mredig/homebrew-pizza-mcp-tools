class McpFingerstring < Formula
  desc "MCP server for FingerString task management"
  homepage "https://github.com/mredig/MCP-FingerString"
  license "MIT"
  head "https://github.com/mredig/MCP-FingerString.git", branch: "main"

  on_macos do
    url "https://github.com/mredig/MCP-FingerString/releases/download/0.0.1/mcp-fingerstring-macos.tar.gz"
    sha256 "3abed958f39c21f889d3fc5debd8447434abba038a4c3354e59d78fd3f6347e4"
  end

  on_linux do
    url "https://github.com/mredig/MCP-FingerString/releases/download/0.0.1/mcp-fingerstring-linux.tar.gz"
    sha256 "61e11ca5228abd368a65e857fb7f7c5087112654f42d5f7be31e7dcaec3c4c2a"
  end

  def install
    bin.install "mcp-fingerstring"
  end

  test do
    assert_predicate bin/"mcp-fingerstring", :exist?
    assert_predicate bin/"mcp-fingerstring", :executable?
  end
end
