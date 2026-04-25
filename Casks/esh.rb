cask "esh" do
  version "0.1.32"
  sha256 "43e4940abbf7a57ebf0d1a7fb2df7ce4e1bd8324f1fe0de446da2d493fc97551"

  url "https://github.com/fil-technology/esh/releases/download/v#{version}/esh-macos-#{version}.zip"
  name "Esh"
  desc "Local-first LLM tool for Apple Silicon"
  homepage "https://github.com/fil-technology/esh"

  depends_on macos: ">= :ventura"
  depends_on formula: "python"

  binary "esh-macos-#{version}/bin/esh", target: "esh"
end
