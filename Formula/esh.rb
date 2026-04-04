class Esh < Formula
  desc "Local-first LLM tool for Apple Silicon"
  homepage "https://github.com/fil-technology/esh"
  url "https://github.com/fil-technology/esh/releases/download/v0.1.7/esh-macos-0.1.7.tar.gz"
  sha256 "a1750ecebb09ab41666f3597f43504f6ac3aae2fd5d137cc6ed8eda7f74f6d34"
  license "MIT"

  depends_on macos: :ventura

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"esh" => "esh"
  end

  test do
    output = shell_output("#{bin}/esh doctor 2>&1")
    assert_match "python", output.downcase
  end
end
