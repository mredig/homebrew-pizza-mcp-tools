class McpZedchat < Formula
  desc "MCP server for searching and accessing Zed editor chat history"
  homepage "https://github.com/mredig/MCP-ZedChat"
  license "MIT"
  head "https://github.com/mredig/MCP-ZedChat.git", branch: "main"

  on_macos do
    url "https://github.com/mredig/MCP-ZedChat/releases/download/0.5.0b2/mcp-zedchat-macos.tar.gz"
    sha256 "eb92d50189de84481fed5087729c9b6de518c282510a5c9cc069372076f52c8a"
  end

  on_linux do
    url "https://github.com/mredig/MCP-ZedChat/releases/download/0.5.0b2/mcp-zedchat-linux.tar.gz"
    sha256 "8d21f2cb3e3eabb5600558a8e3e7db276a3f7990ddee1b808b99fda9771cdf51"
  end

  def install
    bin.install "mcp-zedchat"
  end

  test do
    assert_predicate bin/"mcp-zedchat", :exist?
    assert_predicate bin/"mcp-zedchat", :executable?
  end
end
