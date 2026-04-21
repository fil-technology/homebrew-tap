class Ashex < Formula
  desc "Local-first Swift coding agent for macOS with a TUI, daemon, and typed tools"
  homepage "https://github.com/fil-technology/Ashex"
  license "MIT"
  version "0.2.10"

  depends_on :macos

  on_arm do
    url "https://github.com/fil-technology/Ashex/releases/download/v0.2.10/ashex-0.2.10-macos-arm64.tar.gz"
    sha256 "7032c182f9ed435b29df70711f3da6b30745879b8e0470382906de4e3ef9edf3"
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
