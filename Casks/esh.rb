cask "esh" do
  version "0.1.28"
  sha256 "cc1125c5121f43e5904f5bedfd33ee1ff0156624b63e45ac4f58dccb82cf8c70"

  url "https://github.com/fil-technology/esh/releases/download/v#{version}/esh-macos-#{version}.zip"
  name "Esh"
  desc "Local-first LLM tool for Apple Silicon"
  homepage "https://github.com/fil-technology/esh"

  depends_on macos: ">= :ventura"
  depends_on formula: "python"

  binary "esh-macos-#{version}/bin/esh", target: "esh"
end
