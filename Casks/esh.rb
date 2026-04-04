cask "esh" do
  version "0.1.8"
  sha256 ""

  url "https://github.com/fil-technology/esh/releases/download/v#{version}/esh-macos-#{version}.tar.gz"
  name "Esh"
  desc "Local-first LLM tool for Apple Silicon"
  homepage "https://github.com/fil-technology/esh"

  depends_on macos: ">= :ventura"

  binary "esh-macos-#{version}/esh", target: "esh"
end
