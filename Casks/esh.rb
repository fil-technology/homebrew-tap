cask "esh" do
  version "0.2.0"
  sha256 "cbb1711926727460c3bc3bb3d95236675de73d4e19c0b5d7240689d03937d57e"

  url "https://github.com/fil-technology/esh/releases/download/v#{version}/esh-macos-#{version}.zip"
  name "Esh"
  desc "Local-first LLM tool for Apple Silicon"
  homepage "https://github.com/fil-technology/esh"

  depends_on macos: ">= :ventura"
  depends_on formula: "python"

  binary "esh-macos-#{version}/bin/esh", target: "esh"
end
