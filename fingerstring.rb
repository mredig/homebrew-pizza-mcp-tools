class Fingerstring < Formula
  desc "CLI tool for task list management with subtasks and notes"
  homepage "https://github.com/mredig/FingerString"
  license "MIT"
  head "https://github.com/mredig/FingerString.git", branch: "main"

  on_macos do
    url "https://github.com/mredig/FingerString/releases/download/0.0.3/fingerstring-macos.tar.gz"
    sha256 "c6c9792ef363d689aa6f84179afd0558a2cfe2b5c11e89ed33b8b2353b9b8927"
  end

  on_linux do
    url "https://github.com/mredig/FingerString/releases/download/0.0.3/fingerstring-linux.tar.gz"
    sha256 "d46af5a5124cf95b41bf0d6ca33e232a71e95da79cf7ccdd453be3928e43a065"
  end

  def install
    bin.install "fingerstring"
  end

  test do
    assert_predicate bin/"fingerstring", :exist?
    assert_predicate bin/"fingerstring", :executable?
  end
end
