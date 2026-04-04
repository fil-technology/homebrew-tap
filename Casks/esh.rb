cask "esh" do
  version "0.1.10"
  sha256 "e5247d0b66a6440cfdfd2cd243e8558f80bca0d3b30946044cdc365d9d853e6c"

  url "https://github.com/fil-technology/esh/releases/download/v#{version}/esh-macos-#{version}.tar.gz"
  name "Esh"
  desc "Local-first LLM tool for Apple Silicon"
  homepage "https://github.com/fil-technology/esh"

  depends_on macos: ">= :ventura"
  depends_on formula: "python"

  binary "esh-macos-#{version}/esh", target: "esh"
end
