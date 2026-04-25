cask "esh" do
  version "0.1.31"
  sha256 "368df5decf7bf2d33f4c788c5be2b98eb037ef7c1ec0f063af231fb25ea76c17"

  url "https://github.com/fil-technology/esh/releases/download/v#{version}/esh-macos-#{version}.zip"
  name "Esh"
  desc "Local-first LLM tool for Apple Silicon"
  homepage "https://github.com/fil-technology/esh"

  depends_on macos: ">= :ventura"
  depends_on formula: "python"

  binary "esh-macos-#{version}/bin/esh", target: "esh"
end
