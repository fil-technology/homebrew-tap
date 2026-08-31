cask "esh" do
  version "0.8.1"
  sha256 "43a92a4674d0ed2ed826cb05998f3ca26366b034ffe15a64be4661c3946e18e2"

  url "https://github.com/fil-technology/esh/releases/download/v#{version}/esh-macos-#{version}.zip"
  name "Esh"
  desc "Local-first LLM tool for Apple Silicon"
  homepage "https://github.com/fil-technology/esh"

  depends_on macos: :ventura
  depends_on formula: "python"

  binary "esh-macos-#{version}/bin/esh", target: "esh"
end
