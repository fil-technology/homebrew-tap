cask "esh" do
  version "0.1.25"
  sha256 "3fc96962f56b8d2dce8a0f2fa4cb62d2075f833ad4e6b53b7042d6935d5001cc"

  url "https://github.com/fil-technology/esh/releases/download/v#{version}/esh-macos-#{version}.zip"
  name "Esh"
  desc "Local-first LLM tool for Apple Silicon"
  homepage "https://github.com/fil-technology/esh"

  depends_on macos: ">= :ventura"
  depends_on formula: "python"

  binary "esh-macos-#{version}/bin/esh", target: "esh"
end
