class Fingerstring < Formula
  desc "CLI tool for task list management with subtasks and notes"
  homepage "https://github.com/mredig/FingerString"
  license "MIT"
  head "https://github.com/mredig/FingerString.git", branch: "main"

  on_macos do
    url "https://github.com/mredig/FingerString/releases/download/0.0.6b2/fingerstring-macos.tar.gz"
    sha256 "98f7df19cb3a2592c70274d4cc6a1bc384132c853534a9d0916685dfc78cd6c5"
  end

  on_linux do
    url "https://github.com/mredig/FingerString/releases/download/0.0.6b2/fingerstring-linux.tar.gz"
    sha256 "ad8c06092f2620cfa938c92a686e348dc314b3fdb6b2ca47d6c903b8de9cf3a5"
  end

  def install
    bin.install "fingerstring"
  end

  test do
    assert_predicate bin/"fingerstring", :exist?
    assert_predicate bin/"fingerstring", :executable?
  end
end
