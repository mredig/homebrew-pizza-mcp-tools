class McpFingerstring < Formula
  desc "MCP server for FingerString task management"
  homepage "https://github.com/mredig/MCP-FingerString"
  license "MIT"
  head "https://github.com/mredig/MCP-FingerString.git", branch: "main"

  on_macos do
    url "https://github.com/mredig/MCP-FingerString/releases/download/0.0.3b2/mcp-fingerstring-macos.tar.gz"
    sha256 "ec58539ce29c066a3437601d56aca9573d577faa3c6e1cd297fe03bb4d7fab82"
  end

  on_linux do
    url "https://github.com/mredig/MCP-FingerString/releases/download/0.0.3b2/mcp-fingerstring-linux.tar.gz"
    sha256 "3d4e2b756f513e706e3d47085b90343f54a4153421f912c993ddd66a54501ac0"
  end

  def install
    bin.install "mcp-fingerstring"
  end

  test do
    assert_predicate bin/"mcp-fingerstring", :exist?
    assert_predicate bin/"mcp-fingerstring", :executable?
  end
end
