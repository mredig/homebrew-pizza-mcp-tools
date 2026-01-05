class McpWebreader < Formula
  desc "MCP server for web content reading with JavaScript rendering, caching, and search"
  homepage "https://github.com/mredig/MCP-WebReader"
  license "MIT"
  head "https://github.com/mredig/MCP-WebReader.git", branch: "main"

  on_macos do
    url "https://github.com/mredig/MCP-WebReader/releases/download/0.3.0/mcp-webreader-macos.tar.gz"
    sha256 "f5a8de25761a1f18d81e7bd2b4c4af2c9e45af135ccd3908ef22df715a251d63"
  end

  on_linux do
    url "https://github.com/mredig/MCP-WebReader/releases/download/0.3.0/mcp-webreader-linux.tar.gz"
    sha256 "be91ef0c9d5804b15eea3d819b657c835d196ce0f9aa612cbf695f90a0f8da5c"
  end

  def install
    bin.install "mcp-webreader"
  end

  test do
    assert_predicate bin/"mcp-webreader", :exist?
    assert_predicate bin/"mcp-webreader", :executable?
  end
end
