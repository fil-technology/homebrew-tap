class Ashex < Formula
  desc "Local-first Swift coding agent for macOS with a TUI, daemon, and typed tools"
  homepage "https://github.com/fil-technology/Ashex"
  license "MIT"
  version "0.2.26"

  depends_on :macos

  on_arm do
    url "https://github.com/fil-technology/Ashex/releases/download/v0.2.26/ashex-0.2.26-macos-arm64.tar.gz"
    sha256 "d38b8ad650522089475fc7fb38eec27d8b2505b8f889e12c87b431f0ac18879c"
  end

  on_intel do
    odie "Intel is not yet supported by this formula release. Install a matching x86_64 artifact or publish an Intel archive."
  end

  def install
    dir = Dir["ashex-*"].first || "."
    libexec.install "#{dir}/bin/ashex"
    esh_path = "#{dir}/bin/esh"
    libexec.install esh_path if File.exist?(esh_path)
    libexec.install "#{dir}/bin/Ashex_AshexCore.bundle"
    bin.write_exec_script libexec/"ashex"
    pkgshare.install "#{dir}/share/doc/ashex/README.md", "#{dir}/share/doc/ashex/LICENSE"
  end

  test do
    output = shell_output("#{bin}/ashex --help")
    assert_match "ashex", output
  end
end
