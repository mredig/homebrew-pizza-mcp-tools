class McpZedchat < Formula
  desc "MCP server for searching and accessing Zed editor chat history"
  homepage "https://github.com/mredig/MCP-ZedChat"
  license "MIT"
  head "https://github.com/mredig/MCP-ZedChat.git", branch: "main"

  on_macos do
    url "https://github.com/mredig/MCP-ZedChat/releases/download/0.3.0/mcp-zedchat-macos.tar.gz"
    sha256 "53238fb049a97de81fc5a1f680d51848b856ea26b74e65172d2858ec4b24adfe"
  end

  on_linux do
    url "https://github.com/mredig/MCP-ZedChat/releases/download/0.3.0/mcp-zedchat-linux.tar.gz"
    sha256 "0233a87e607434e281de9afb18f5ce7a706951269ce521e191bad70a5edf6227"
  end

  def install
    bin.install "mcp-zedchat"
  end

  test do
    assert_predicate bin/"mcp-zedchat", :exist?
    assert_predicate bin/"mcp-zedchat", :executable?
  end
end
