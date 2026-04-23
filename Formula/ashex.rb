class Ashex < Formula
  desc "Local-first Swift coding agent for macOS with a TUI, daemon, and typed tools"
  homepage "https://github.com/fil-technology/Ashex"
  license "MIT"
  version "0.2.21"

  depends_on :macos

  on_arm do
    url "https://github.com/fil-technology/Ashex/releases/download/v0.2.21/ashex-0.2.21-macos-arm64.tar.gz"
    sha256 "4a0f73b8db798f3eaa24e6459dd76de818f0e142563865a113247024a074ff30"
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
