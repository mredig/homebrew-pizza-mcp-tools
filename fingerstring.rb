class Fingerstring < Formula
  desc "CLI tool for task list management with subtasks and notes"
  homepage "https://github.com/mredig/FingerString"
  license "MIT"
  head "https://github.com/mredig/FingerString.git", branch: "main"

  on_macos do
    url "https://github.com/mredig/FingerString/releases/download/0.0.8/fingerstring-macos.tar.gz"
    sha256 "7386dfcca4e93f0a5eda1befd155790d9ce0dbf803ab5339e40da354aff9ec99"
  end

  on_linux do
    url "https://github.com/mredig/FingerString/releases/download/0.0.8/fingerstring-linux.tar.gz"
    sha256 "22a396296d921a0fc3a23697f767a3dd2a06e18fb6c080770b7b40a4a4a6e686"
  end

  def install
    bin.install "fingerstring"
  end

  test do
    assert_predicate bin/"fingerstring", :exist?
    assert_predicate bin/"fingerstring", :executable?
  end
end
