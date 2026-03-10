class McpZedchat < Formula
  desc "MCP server for searching and accessing Zed editor chat history"
  homepage "https://github.com/mredig/MCP-ZedChat"
  license "MIT"
  head "https://github.com/mredig/MCP-ZedChat.git", branch: "main"

  on_macos do
    url "https://github.com/mredig/MCP-ZedChat/releases/download/0.5.3/mcp-zedchat-macos.tar.gz"
    sha256 "2f9967c698dae4a3c44e10b21ef0eaee59c566aad27003bc9cdc255a9377afda"
  end

  on_linux do
    url "https://github.com/mredig/MCP-ZedChat/releases/download/0.5.3/mcp-zedchat-linux.tar.gz"
    sha256 "641f17de80cd0ddc45678e9f44824b50942664883a84433a2e3e17230c731774"
  end

  def install
    bin.install "mcp-zedchat"
  end

  test do
    assert_predicate bin/"mcp-zedchat", :exist?
    assert_predicate bin/"mcp-zedchat", :executable?
  end
end
