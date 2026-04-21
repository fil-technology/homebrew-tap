class Ashex < Formula
  desc "Local-first Swift coding agent for macOS with a TUI, daemon, and typed tools"
  homepage "https://github.com/fil-technology/Ashex"
  license "MIT"
  version "0.2.5"
  revision 1

  depends_on :macos

  on_arm do
    url "https://github.com/fil-technology/Ashex/releases/download/v0.2.5/ashex-0.2.5-macos-arm64.tar.gz"
    sha256 "08bf001a39f4ed74d656d8a16b38d2b66838819b58241150bd47d96117d2d3bb"
  end

  on_intel do
    odie "Intel is not yet supported by this formula release. Install a matching x86_64 artifact or publish an Intel archive."
  end

  def install
    dir = Dir["ashex-*"].first || "."
    libexec.install "#{dir}/bin/ashex"
    libexec.install "#{dir}/bin/Ashex_AshexCore.bundle"
    bin.write_exec_script libexec/"ashex"
    pkgshare.install "#{dir}/share/doc/ashex/README.md", "#{dir}/share/doc/ashex/LICENSE"
  end

  test do
    output = shell_output("#{bin}/ashex --help")
    assert_match "ashex", output
  end
end
