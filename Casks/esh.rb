cask "esh" do
  version "0.9.2"
  sha256 "add0e3bc2d43080c3cb4fa5c15cfce7cce89e2061957cc623c7cb80ffa810fdf"

  url "https://github.com/fil-technology/esh/releases/download/v#{version}/esh-macos-#{version}.zip"
  name "Esh"
  desc "Local-first LLM tool for Apple Silicon"
  homepage "https://github.com/fil-technology/esh"

  depends_on macos: :ventura
  depends_on formula: "python"

  binary "esh-macos-#{version}/bin/esh", target: "esh"
end
