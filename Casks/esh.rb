cask "esh" do
  version "0.9.5"
  sha256 "4783adbb97eb43766c4dbfeda7f6bf4f91982aff1bbf2a7eb9c0d729462341ec"

  url "https://github.com/fil-technology/esh/releases/download/v#{version}/esh-macos-#{version}.zip"
  name "Esh"
  desc "Local-first LLM tool for Apple Silicon"
  homepage "https://github.com/fil-technology/esh"

  depends_on macos: :ventura
  depends_on formula: "python"

  binary "esh-macos-#{version}/bin/esh", target: "esh"
end
