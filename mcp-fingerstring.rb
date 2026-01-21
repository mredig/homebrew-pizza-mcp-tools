class McpFingerstring < Formula
  desc "MCP server for FingerString task management"
  homepage "https://github.com/mredig/MCP-FingerString"
  license "MIT"
  head "https://github.com/mredig/MCP-FingerString.git", branch: "main"

  on_macos do
    url "https://github.com/mredig/MCP-FingerString/releases/download/0.0.4b1/mcp-fingerstring-macos.tar.gz"
    sha256 "02e3cba04ad37290b344d498d97537711841a0d653bdbe36c31366be22a5aa82"
  end

  on_linux do
    url "https://github.com/mredig/MCP-FingerString/releases/download/0.0.4b1/mcp-fingerstring-linux.tar.gz"
    sha256 "8e47a53b90bc20da581c61a66cf0d9141355097807564776a7a69d401ac5a063"
  end

  def install
    bin.install "mcp-fingerstring"
  end

  test do
    assert_predicate bin/"mcp-fingerstring", :exist?
    assert_predicate bin/"mcp-fingerstring", :executable?
  end
end
