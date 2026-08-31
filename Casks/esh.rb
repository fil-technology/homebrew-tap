cask "esh" do
  version "0.6.0"
  sha256 "d6b7baa83b1cdc7dbef6f6ffdcb321d8cb3059e32a8eb62a6cec510fdbc11207"

  url "https://github.com/fil-technology/esh/releases/download/v#{version}/esh-macos-#{version}.zip"
  name "Esh"
  desc "Local-first LLM tool for Apple Silicon"
  homepage "https://github.com/fil-technology/esh"

  depends_on macos: ">= :ventura"
  depends_on formula: "python"

  binary "esh-macos-#{version}/bin/esh", target: "esh"
end
