cask "esh" do
  version "0.1.19"
  sha256 "f68d10073f5545611c5fe1ad4ac93cc3276fd1afbd8b41a608fcbf7c72fc212f"

  url "https://github.com/fil-technology/esh/releases/download/v#{version}/esh-macos-#{version}.zip"
  name "Esh"
  desc "Local-first LLM tool for Apple Silicon"
  homepage "https://github.com/fil-technology/esh"

  depends_on macos: ">= :ventura"
  depends_on formula: "python"

  binary "esh-macos-#{version}/bin/esh", target: "esh"
end
