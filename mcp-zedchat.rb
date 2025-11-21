class McpZedchat < Formula
  desc "MCP server for searching and accessing Zed editor chat history"
  homepage "https://github.com/mredig/MCP-ZedChat"
  url "https://github.com/mredig/MCP-ZedChat/releases/download/null/mcp-zedchat-macos.tar.gz"
  sha256 "Not"
  license "MIT"
  head "https://github.com/mredig/MCP-ZedChat.git", branch: "main"

  def install
    bin.install "mcp-zedchat"
  end

  test do
    # Just verify the binary exists and is executable
    assert_predicate bin/"mcp-zedchat", :exist?
    assert_predicate bin/"mcp-zedchat", :executable?
  end
end