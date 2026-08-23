class McpZedchat < Formula
  desc "MCP server for searching and accessing Zed editor chat history"
  homepage "https://github.com/mredig/MCP-ZedChat"
  license "MIT"
  head "https://github.com/mredig/MCP-ZedChat.git", branch: "main"

  on_macos do
    url "https://github.com/mredig/MCP-ZedChat/releases/download/0.6.0/mcp-zedchat-macos.tar.gz"
    sha256 "9b7d115f4d3e705263e2ba5495275ce27a5efb4158e6a64cbcf5c42762e3ba66"
  end

  on_linux do
    url "https://github.com/mredig/MCP-ZedChat/releases/download/0.6.0/mcp-zedchat-linux.tar.gz"
    sha256 "a86b7a2da7895939ff0351db5b19e399e42a61d31d295bb5c98abbaebd009de5"
  end

  def install
    bin.install "mcp-zedchat"
  end

  test do
    assert_predicate bin/"mcp-zedchat", :exist?
    assert_predicate bin/"mcp-zedchat", :executable?
  end
end
