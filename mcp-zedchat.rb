class McpZedchat < Formula
  desc "MCP server for searching and accessing Zed editor chat history"
  homepage "https://github.com/mredig/MCP-ZedChat"
  url "https://github.com/mredig/MCP-ZedChat/releases/download/0.3.0b2/mcp-zedchat-macos.tar.gz"
  sha256 "9e9a33d274ed3fb05921e039665e6c7f7edc8a2d5b2fd870d217cc81de048608"
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