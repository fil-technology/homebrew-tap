class Ashex < Formula
  desc "Local-first Swift coding agent for macOS with a TUI, daemon, and typed tools"
  homepage "https://github.com/fil-technology/Ashex"
  license "MIT"
  version "0.2.2"

  depends_on :macos

  on_arm do
    url "https://github.com/fil-technology/Ashex/releases/download/v0.2.2/ashex-0.2.2-macos-arm64.tar.gz"
    sha256 "a583a2b1a6fe6baf29376d3fab8b917c086e046deb9f77a4355bbef1371c6773"
  end

  on_intel do
    odie "Intel is not yet supported by this formula release. Install a matching x86_64 artifact or publish an Intel archive."
  end

  def install
    dir = Dir["ashex-*"].first || "."
    bin.install "\#{dir}/bin/ashex" => "ashex"
    pkgshare.install "\#{dir}/share/doc/ashex/README.md", "\#{dir}/share/doc/ashex/LICENSE"
  end

  test do
    output = shell_output("#{bin}/ashex --help")
    assert_match "ashex", output
  end
end
