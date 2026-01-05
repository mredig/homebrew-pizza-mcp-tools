class Fingerstring < Formula
  desc "CLI tool for task list management with subtasks and notes"
  homepage "https://github.com/mredig/FingerString"
  license "MIT"
  head "https://github.com/mredig/FingerString.git", branch: "main"

  on_macos do
    url "https://github.com/mredig/FingerString/releases/download/0.0.4/fingerstring-macos.tar.gz"
    sha256 "d276a51f0069b9b54339b0810ea5096a9bc195e91256ff159bf533bdca9f169e"
  end

  on_linux do
    url "https://github.com/mredig/FingerString/releases/download/0.0.4/fingerstring-linux.tar.gz"
    sha256 "63a9859ebd148b232dcb414ac2f733da1fe4c795b0791a364c7a1aa5f511bc80"
  end

  def install
    bin.install "fingerstring"
  end

  test do
    assert_predicate bin/"fingerstring", :exist?
    assert_predicate bin/"fingerstring", :executable?
  end
end
