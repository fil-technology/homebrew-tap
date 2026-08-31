cask "esh" do
  version "0.9.3"
  sha256 "35ad7112ca4ec766d356d45bd70738d6182418c76ffe8fa6785e45e8f47f0d91"

  url "https://github.com/fil-technology/esh/releases/download/v#{version}/esh-macos-#{version}.zip"
  name "Esh"
  desc "Local-first LLM tool for Apple Silicon"
  homepage "https://github.com/fil-technology/esh"

  depends_on macos: :ventura
  depends_on formula: "python"

  binary "esh-macos-#{version}/bin/esh", target: "esh"
end
