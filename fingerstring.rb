class Fingerstring < Formula
  desc "CLI tool for task list management with subtasks and notes"
  homepage "https://github.com/mredig/FingerString"
  license "MIT"
  head "https://github.com/mredig/FingerString.git", branch: "main"

  on_macos do
    url "https://github.com/mredig/FingerString/releases/download/0.0.9/fingerstring-macos.tar.gz"
    sha256 "0ea5a5f255320bc84677e294d734a83932bebccbbcd2cb756ddc80c8f2c59877"
  end

  on_linux do
    url "https://github.com/mredig/FingerString/releases/download/0.0.9/fingerstring-linux.tar.gz"
    sha256 "f08589dcc5ea60dc7a5fe8baf1a089ad9b162420262dc95bd06b428411ce4dd2"
  end

  def install
    bin.install "fingerstring"
  end

  test do
    assert_predicate bin/"fingerstring", :exist?
    assert_predicate bin/"fingerstring", :executable?
  end
end
