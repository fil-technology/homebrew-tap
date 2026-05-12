cask "esh" do
  version "0.1.41"
  sha256 "ce33dae9ed5fdc8b784d14a92e73a8dbc6af3c29bad71cb9ab5806a0bef3b6b9"

  url "https://github.com/fil-technology/esh/releases/download/v#{version}/esh-macos-#{version}.zip"
  name "Esh"
  desc "Local-first LLM tool for Apple Silicon"
  homepage "https://github.com/fil-technology/esh"

  depends_on macos: ">= :ventura"
  depends_on formula: "python"

  binary "esh-macos-#{version}/bin/esh", target: "esh"
end
