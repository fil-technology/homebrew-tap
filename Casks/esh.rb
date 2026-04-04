cask "esh" do
  version "0.1.14"
  sha256 "c756ffa96a3911da7a6f48017b2c1bf7d9ff5128022916ed6c93a8b69fa7c22d"

  url "https://github.com/fil-technology/esh/releases/download/v#{version}/esh-macos-#{version}.zip"
  name "Esh"
  desc "Local-first LLM tool for Apple Silicon"
  homepage "https://github.com/fil-technology/esh"

  depends_on macos: ">= :ventura"
  depends_on formula: "python"

  binary "esh-macos-#{version}/bin/esh", target: "esh"
end
