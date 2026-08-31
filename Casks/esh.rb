cask "esh" do
  version "0.9.7"
  sha256 "94218aabc2bc304cbf60ba4d2f71ae1a9123bfa124296896fffe96f15e69b827"

  url "https://github.com/fil-technology/esh/releases/download/v#{version}/esh-macos-#{version}.zip"
  name "Esh"
  desc "Local-first LLM tool for Apple Silicon"
  homepage "https://github.com/fil-technology/esh"

  depends_on macos: :ventura
  depends_on formula: "python"

  binary "esh-macos-#{version}/bin/esh", target: "esh"
end
