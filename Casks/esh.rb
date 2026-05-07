cask "esh" do
  version "0.1.40"
  sha256 "e76d0d485bcbe348bbff8568f90ed570d92cf760846d389dba5bb7f0b2b02a88"

  url "https://github.com/fil-technology/esh/releases/download/v#{version}/esh-macos-#{version}.zip"
  name "Esh"
  desc "Local-first LLM tool for Apple Silicon"
  homepage "https://github.com/fil-technology/esh"

  depends_on macos: ">= :ventura"
  depends_on formula: "python"

  binary "esh-macos-#{version}/bin/esh", target: "esh"
end
