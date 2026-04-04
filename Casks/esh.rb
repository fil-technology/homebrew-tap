cask "esh" do
  version "0.1.17"
  sha256 "b87912268ccd8af6b4289ba2c88deca783a7e92e46b880b3bfc1d44bdcaa7946"

  url "https://github.com/fil-technology/esh/releases/download/v#{version}/esh-macos-#{version}.zip"
  name "Esh"
  desc "Local-first LLM tool for Apple Silicon"
  homepage "https://github.com/fil-technology/esh"

  depends_on macos: ">= :ventura"
  depends_on formula: "python"

  binary "esh-macos-#{version}/bin/esh", target: "esh"
end
