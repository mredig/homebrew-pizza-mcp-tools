class McpZedchat < Formula
  desc "MCP server for searching and accessing Zed editor chat history"
  homepage "https://github.com/mredig/MCP-ZedChat"
  license "MIT"
  head "https://github.com/mredig/MCP-ZedChat.git", branch: "main"

  on_macos do
    url "https://github.com/mredig/MCP-ZedChat/releases/download/0.5.1b1/mcp-zedchat-macos.tar.gz"
    sha256 "46e52219bfd5b63a968d21af70ce63e0150087a179c55a572620a2d6d45810fa"
  end

  on_linux do
    url "https://github.com/mredig/MCP-ZedChat/releases/download/0.5.1b1/mcp-zedchat-linux.tar.gz"
    sha256 "3367e3ce7ac8986044dd632b059b6907cd66ec5d4a2475f8b727163e5836bf30"
  end

  def install
    bin.install "mcp-zedchat"
  end

  test do
    assert_predicate bin/"mcp-zedchat", :exist?
    assert_predicate bin/"mcp-zedchat", :executable?
  end
end
