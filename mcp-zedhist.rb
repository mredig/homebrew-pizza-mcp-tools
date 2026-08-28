class McpZedhist < Formula
  desc "MCP server and CLI for searching and accessing Zed editor agent chat history"
  homepage "https://github.com/mredig/MCP-ZedChat"
  license "MIT"
  head "https://github.com/mredig/MCP-ZedChat.git", branch: "main"

  on_macos do
    url "https://github.com/mredig/MCP-ZedChat/releases/download/0.6.1b4/zedhist-macos.tar.gz"
    sha256 "98b52c9e70c600c8be6cb20ecf605f8ed22352c87201635c44b58ef9351645e2"
  end

  on_linux do
    url "https://github.com/mredig/MCP-ZedChat/releases/download/0.6.1b4/zedhist-linux.tar.gz"
    sha256 "c63da7cc412e30ad0000e3cb67eceb681231839954324ce6acc998c848eb6c40"
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
