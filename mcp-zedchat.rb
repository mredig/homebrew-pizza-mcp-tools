class McpZedchat < Formula
  desc "MCP server for searching and accessing Zed editor chat history"
  homepage "https://github.com/mredig/MCP-ZedChat"
  url "https://github.com/mredig/MCP-ZedChat/releases/download/0.3.0/mcp-zedchat-macos.tar.gz"
  sha256 "53238fb049a97de81fc5a1f680d51848b856ea26b74e65172d2858ec4b24adfe"
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