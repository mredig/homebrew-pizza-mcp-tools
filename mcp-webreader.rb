class McpWebreader < Formula
  desc "MCP server for web content reading with JavaScript rendering, caching, and search"
  homepage "https://github.com/mredig/MCP-WebReader"
  license "MIT"
  head "https://github.com/mredig/MCP-WebReader.git", branch: "main"

  on_macos do
    url "https://github.com/mredig/MCP-WebReader/releases/download/0.4.0/mcp-webreader-macos.tar.gz"
    sha256 "443023b660864c52310c2f7880e4598c80b35b05899f270bc27f37ef5d4009e9"
  end

  on_linux do
    url "https://github.com/mredig/MCP-WebReader/releases/download/0.4.0/mcp-webreader-linux.tar.gz"
    sha256 "6f1cacf19a7c9b7ad2f63f10693cb6e75a32e0db56320a0abcc2244163c9eb0b"
  end

  def install
    bin.install "mcp-webreader"
  end

  test do
    assert_predicate bin/"mcp-webreader", :exist?
    assert_predicate bin/"mcp-webreader", :executable?
  end
end
