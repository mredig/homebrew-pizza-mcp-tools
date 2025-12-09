class McpZedchat < Formula
  desc "MCP server for searching and accessing Zed editor chat history"
  homepage "https://github.com/mredig/MCP-ZedChat"
  url "https://github.com/mredig/MCP-ZedChat/releases/download/0.2.0/mcp-zedchat-macos.tar.gz"
  sha256 "70cfd77496bf58c3af57a5475003ea10bc8933a9cff5c093e4e06300727a9d93"
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