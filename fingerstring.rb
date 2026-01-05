class Fingerstring < Formula
  desc "FingerString: CLI task and list management tool"
  homepage "https://github.com/mredig/FingerString"
  url "https://github.com/mredig/FingerString/releases/download/0.0.0/fingerstring-macos.tar.gz"
  sha256 "PLACEHOLDER_SHA256_MACOS"
  license "MIT"
  head "https://github.com/mredig/FingerString.git", branch: "main"

  on_macos do
    url "https://github.com/mredig/FingerString/releases/download/0.0.0/fingerstring-macos.tar.gz"
    sha256 "PLACEHOLDER_SHA256_MACOS"
  end

  on_linux do
    url "https://github.com/mredig/FingerString/releases/download/0.0.0/fingerstring-linux.tar.gz"
    sha256 "PLACEHOLDER_SHA256_LINUX"
  end

  def install
    bin.install "fingerstring"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fingerstring --help 2>&1")
  end
end
