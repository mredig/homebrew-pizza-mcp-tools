class Fingerstring < Formula
  desc "CLI tool for task list management with subtasks and notes"
  homepage "https://github.com/mredig/FingerString"
  license "MIT"
  head "https://github.com/mredig/FingerString.git", branch: "main"

  on_macos do
    url "https://github.com/mredig/FingerString/releases/download/0.0.6b1/fingerstring-macos.tar.gz"
    sha256 "6acace5a06a5d1dc83d6645b7ac2d09e3e9c4605c1e07528d2037fa5ca227265"
  end

  on_linux do
    url "https://github.com/mredig/FingerString/releases/download/0.0.6b1/fingerstring-linux.tar.gz"
    sha256 "4948dde654acd8d3db682c601d66a582a4e1f7aff819763aa82cc02fb38c2df6"
  end

  def install
    bin.install "fingerstring"
  end

  test do
    assert_predicate bin/"fingerstring", :exist?
    assert_predicate bin/"fingerstring", :executable?
  end
end
