cask "esh" do
  version "0.1.21"
  sha256 "c6216b81ade51b33ffe4d2eaf931a013e79c4673c90f7f9ce0c21c3db8d3a993"

  url "https://github.com/fil-technology/esh/releases/download/v#{version}/esh-macos-#{version}.zip"
  name "Esh"
  desc "Local-first LLM tool for Apple Silicon"
  homepage "https://github.com/fil-technology/esh"

  depends_on macos: ">= :ventura"
  depends_on formula: "python"

  binary "esh-macos-#{version}/bin/esh", target: "esh"
end
