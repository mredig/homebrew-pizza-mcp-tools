class McpZedhist < Formula
  desc "MCP server and CLI for searching and accessing Zed editor agent chat history"
  homepage "https://github.com/mredig/MCP-ZedChat"
  license "MIT"
  head "https://github.com/mredig/MCP-ZedChat.git", branch: "main"

  on_macos do
    url "https://github.com/mredig/MCP-ZedChat/releases/download/0.6.1/zedhist-macos.tar.gz"
    sha256 "02ad127d94848e5a9e5a99b484687620791b862b78987bc3df500d6dc4c86dce"
  end

  on_linux do
    url "https://github.com/mredig/MCP-ZedChat/releases/download/0.6.1/zedhist-linux.tar.gz"
    sha256 "c860cf94e228a7ded13df99824582a3553db318200780f4ae248d1866e6b8a13"
  end

  def install
    bin.install "mcp-zedhist"
    bin.install "zedhist"
  end

  test do
    assert_predicate bin/"mcp-zedhist", :exist?
    assert_predicate bin/"mcp-zedhist", :executable?
    assert_predicate bin/"zedhist", :exist?
    assert_predicate bin/"zedhist", :executable?
  end
end
