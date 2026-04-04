cask "esh" do
  version "0.1.15"
  sha256 "233aa5f5f34745552911ac65f7dced42a035d6f47fbc0a1d0989fba4f24cb2b8"

  url "https://github.com/fil-technology/esh/releases/download/v#{version}/esh-macos-#{version}.zip"
  name "Esh"
  desc "Local-first LLM tool for Apple Silicon"
  homepage "https://github.com/fil-technology/esh"

  depends_on macos: ">= :ventura"
  depends_on formula: "python"

  binary "esh-macos-#{version}/bin/esh", target: "esh"
end
