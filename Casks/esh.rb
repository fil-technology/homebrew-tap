cask "esh" do
  version "0.8.0"
  sha256 "0a4b66f937c7e74d3bd5a23d14759b288526add3e942c1d6a52a2ee828220ab3"

  url "https://github.com/fil-technology/esh/releases/download/v#{version}/esh-macos-#{version}.zip"
  name "Esh"
  desc "Local-first LLM tool for Apple Silicon"
  homepage "https://github.com/fil-technology/esh"

  depends_on macos: ">= :ventura"
  depends_on formula: "python"

  binary "esh-macos-#{version}/bin/esh", target: "esh"
end
