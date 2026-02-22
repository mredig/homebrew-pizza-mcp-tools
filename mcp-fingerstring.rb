class McpFingerstring < Formula
  desc "MCP server for FingerString task management"
  homepage "https://github.com/mredig/MCP-FingerString"
  license "MIT"
  head "https://github.com/mredig/MCP-FingerString.git", branch: "main"

  on_macos do
    url "https://github.com/mredig/MCP-FingerString/releases/download/0.0.7/mcp-fingerstring-macos.tar.gz"
    sha256 "a306c3bef2a7adef5013e8b6cf657570a817095300a91b180de5ce13535bc6bf"
  end

  on_linux do
    url "https://github.com/mredig/MCP-FingerString/releases/download/0.0.7/mcp-fingerstring-linux.tar.gz"
    sha256 "6bbff2fc897a6996473caef2e213fad93caefd866afd03bcbd3ff5d9eacdd742"
  end

  def install
    bin.install "mcp-fingerstring"
  end

  test do
    assert_predicate bin/"mcp-fingerstring", :exist?
    assert_predicate bin/"mcp-fingerstring", :executable?
  end
end
