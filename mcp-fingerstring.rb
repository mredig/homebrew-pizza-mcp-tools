class McpFingerstring < Formula
  desc "MCP server for FingerString task management"
  homepage "https://github.com/mredig/MCP-FingerString"
  license "MIT"
  head "https://github.com/mredig/MCP-FingerString.git", branch: "main"

  on_macos do
    url "https://github.com/mredig/MCP-FingerString/releases/download/0.0.8/mcp-fingerstring-macos.tar.gz"
    sha256 "f8439430f902f2bd32ce5adb535da6bd33e5e72e7521d9f92549591afe3d7be2"
  end

  on_linux do
    url "https://github.com/mredig/MCP-FingerString/releases/download/0.0.8/mcp-fingerstring-linux.tar.gz"
    sha256 "5fad3c7928169e5d3edb94aeb01ad12f64c3870f2a802ae45fae0086b3e6e138"
  end

  def install
    bin.install "mcp-fingerstring"
  end

  test do
    assert_predicate bin/"mcp-fingerstring", :exist?
    assert_predicate bin/"mcp-fingerstring", :executable?
  end
end
