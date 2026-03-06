class McpWebreader < Formula
  desc "MCP server for web content reading with JavaScript rendering, caching, and search"
  homepage "https://github.com/mredig/MCP-WebReader"
  license "MIT"
  head "https://github.com/mredig/MCP-WebReader.git", branch: "main"

  on_macos do
    url "https://github.com/mredig/MCP-WebReader/releases/download/0.4.1/mcp-webreader-macos.tar.gz"
    sha256 "796b02447303bf2161326b925590093ae51a94e73de6b56eb5db3616bab26f66"
  end

  on_linux do
    url "https://github.com/mredig/MCP-WebReader/releases/download/0.4.1/mcp-webreader-linux.tar.gz"
    sha256 "35ecea61aac40883453e28a8cc3f5d0e3c9e5e6021465efce37303ddcb93bbbe"
  end

  def install
    bin.install "mcp-webreader"
  end

  test do
    assert_predicate bin/"mcp-webreader", :exist?
    assert_predicate bin/"mcp-webreader", :executable?
  end
end
