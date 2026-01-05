class McpFingerstring < Formula
  desc "MCP server for FingerString task management"
  homepage "https://github.com/mredig/MCP-FingerString"
  license "MIT"
  head "https://github.com/mredig/MCP-FingerString.git", branch: "main"

  on_macos do
    url "https://github.com/mredig/MCP-FingerString/releases/download/0.0.2/mcp-fingerstring-macos.tar.gz"
    sha256 "0655f0c5f55df6a5b07a8877f0e2b19af76f7197f8a55f7500e50aaa43a6f2f6"
  end

  on_linux do
    url "https://github.com/mredig/MCP-FingerString/releases/download/0.0.2/mcp-fingerstring-linux.tar.gz"
    sha256 "cb35ae0ab476364496867ff4445ec05408d78c26eaa99f11b6c52345e14f2428"
  end

  def install
    bin.install "mcp-fingerstring"
  end

  test do
    assert_predicate bin/"mcp-fingerstring", :exist?
    assert_predicate bin/"mcp-fingerstring", :executable?
  end
end
