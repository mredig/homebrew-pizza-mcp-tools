class McpZedchat < Formula
  desc "MCP server for searching and accessing Zed editor chat history"
  homepage "https://github.com/mredig/MCP-ZedChat"
  license "MIT"
  head "https://github.com/mredig/MCP-ZedChat.git", branch: "main"

  on_macos do
    url "https://github.com/mredig/MCP-ZedChat/releases/download/0.4.0b1/mcp-zedchat-macos.tar.gz"
    sha256 "43392cb9890fe4b0467a3a135f7137f2d984177e8b042f0cb8d0afa15b9ef061"
  end

  on_linux do
    url "https://github.com/mredig/MCP-ZedChat/releases/download/0.4.0b1/mcp-zedchat-linux.tar.gz"
    sha256 "061192503f1857ada7ec016c23168c093026c65ce6a49a6d70adfd91fe24e681"
  end

  def install
    bin.install "mcp-zedchat"
  end

  test do
    assert_predicate bin/"mcp-zedchat", :exist?
    assert_predicate bin/"mcp-zedchat", :executable?
  end
end
