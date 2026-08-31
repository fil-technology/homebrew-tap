cask "esh" do
  version "0.9.4"
  sha256 "b1c408596e3402927f88cd0e4dd82a529c7c9322910cc7dab2eadc248bba1356"

  url "https://github.com/fil-technology/esh/releases/download/v#{version}/esh-macos-#{version}.zip"
  name "Esh"
  desc "Local-first LLM tool for Apple Silicon"
  homepage "https://github.com/fil-technology/esh"

  depends_on macos: :ventura
  depends_on formula: "python"

  binary "esh-macos-#{version}/bin/esh", target: "esh"
end
