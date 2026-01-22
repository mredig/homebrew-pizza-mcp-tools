class Fingerstring < Formula
  desc "CLI tool for task list management with subtasks and notes"
  homepage "https://github.com/mredig/FingerString"
  license "MIT"
  head "https://github.com/mredig/FingerString.git", branch: "main"

  on_macos do
    url "https://github.com/mredig/FingerString/releases/download/0.0.6b3/fingerstring-macos.tar.gz"
    sha256 "5c1697bf1f874e8504a70197a35b3d4dcc9a630e67bb874900d842265d837319"
  end

  on_linux do
    url "https://github.com/mredig/FingerString/releases/download/0.0.6b3/fingerstring-linux.tar.gz"
    sha256 "182f640bd61c20b646ca50aede8161b18d7cb6e7b3a750e9fdb578cdde7cbc59"
  end

  def install
    bin.install "fingerstring"
  end

  test do
    assert_predicate bin/"fingerstring", :exist?
    assert_predicate bin/"fingerstring", :executable?
  end
end
