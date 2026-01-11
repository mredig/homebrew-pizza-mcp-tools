class Fingerstring < Formula
  desc "CLI tool for task list management with subtasks and notes"
  homepage "https://github.com/mredig/FingerString"
  license "MIT"
  head "https://github.com/mredig/FingerString.git", branch: "main"

  on_macos do
    url "https://github.com/mredig/FingerString/releases/download/0.0.5/fingerstring-macos.tar.gz"
    sha256 "2ac3bc1509c1c57cf1bf4377d8b41f12f66b365f08dfe2ce58cb9d507087a953"
  end

  on_linux do
    url "https://github.com/mredig/FingerString/releases/download/0.0.5/fingerstring-linux.tar.gz"
    sha256 "d40f6a668db35f30c9258b292d3af95043174de53b2f82a199c6728ec5f5bece"
  end

  def install
    bin.install "fingerstring"
  end

  test do
    assert_predicate bin/"fingerstring", :exist?
    assert_predicate bin/"fingerstring", :executable?
  end
end
