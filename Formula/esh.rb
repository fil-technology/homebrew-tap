class Esh < Formula
  desc "Local-first LLM tool for Apple Silicon"
  homepage "https://github.com/fil-technology/esh"
  url "https://github.com/fil-technology/esh/releases/download/v0.1.7/esh-macos-0.1.7.tar.gz"
  sha256 "fddbe4b095edfa7fbde264b3878bbcdd7c147eb84a0e78c0c425f85122eaabbb"
  license "MIT"

  depends_on macos: :ventura

  def install
    pkgshare.install Dir["*"]
    bin.install_symlink pkgshare/"esh" => "esh"
  end

  test do
    output = shell_output("#{bin}/esh doctor 2>&1")
    assert_match "python", output.downcase
  end
end
