cask "esh" do
  version "0.1.7"
  sha256 "fddbe4b095edfa7fbde264b3878bbcdd7c147eb84a0e78c0c425f85122eaabbb"

  url "https://github.com/fil-technology/esh/releases/download/v#{version}/esh-macos-#{version}.tar.gz"
  name "Esh"
  desc "Local-first LLM tool for Apple Silicon"
  homepage "https://github.com/fil-technology/esh"

  depends_on macos: ">= :ventura"

  binary "esh-macos-#{version}/esh", target: "esh"
end
