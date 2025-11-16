class McpWebreader < Formula
  desc "MCP server for web reading with JS rendering, caching, and search - handles dynamic sites that break built-in fetch"
  homepage "https://github.com/mredig/MCP-WebReader"
  url "https://github.com/mredig/MCP-WebReader/archive/refs/tags/0.1.2.tar.gz"
  sha256 "fdc6d69b817b981cf6a76d1efdd418a52fb69b1d4973439a85b6182059b18fd2"
  license "MIT"
  head "https://github.com/mredig/MCP-WebReader.git", branch: "main"

  depends_on xcode: ["15.0", :build]
  depends_on macos: :ventura

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/mcp-webreader"
  end

  test do
    output = shell_output("#{bin}/mcp-webreader --help 2>&1")
    assert_match "USAGE:", output
  end
end