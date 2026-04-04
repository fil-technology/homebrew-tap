cask "esh" do
  version "0.1.9"
  sha256 "4a7407d015a5dc9bf89643aeb96e36d785c9d1b36c699f72a049f56e4459f373"

  url "https://github.com/fil-technology/esh/releases/download/v#{version}/esh-macos-#{version}.tar.gz"
  name "Esh"
  desc "Local-first LLM tool for Apple Silicon"
  homepage "https://github.com/fil-technology/esh"

  depends_on macos: ">= :ventura"

  binary "esh-macos-#{version}/esh", target: "esh"
end
