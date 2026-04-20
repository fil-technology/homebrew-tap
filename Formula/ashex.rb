class Ashex < Formula
  desc "Local-first Swift coding agent for macOS with a TUI, daemon, and typed tools"
  homepage "https://github.com/fil-technology/ashex"
  url "https://github.com/fil-technology/homebrew-tap/releases/download/ashex-v0.2.0/ashex-v0.2.0-source.tar.gz"
  sha256 "6d393ea52152693f62d892b2f1c8a314534ed8f63645093bb0a96dda03fcc039"
  license "MIT"
  version "0.2.0"

  depends_on :macos
  depends_on "swift" => :build

  def install
    system "swift", "build", "-c", "release", "--product", "ashex"
    bin_path = Utils.safe_popen_read("swift", "build", "-c", "release", "--product", "ashex", "--show-bin-path").strip
    bin.install "#{bin_path}/ashex" => "ashex"
    pkgshare.install "README.md", "LICENSE"
  end

  test do
    output = shell_output("#{bin}/ashex --help")
    assert_match "ashex", output
  end
end
