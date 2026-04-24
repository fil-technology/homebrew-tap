class Ashex < Formula
  desc "Local-first Swift coding agent for macOS with a TUI, daemon, and typed tools"
  homepage "https://github.com/fil-technology/Ashex"
  license "MIT"
  version "0.2.28"

  depends_on :macos

  on_arm do
    url "https://github.com/fil-technology/Ashex/releases/download/v0.2.28/ashex-0.2.28-macos-arm64.tar.gz"
    sha256 "721fe57f9e3ab1769a3e5fea5797e227d508ae73c6457ba4d08847baf46a4eef"
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
