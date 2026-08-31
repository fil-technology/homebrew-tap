cask "esh" do
  version "0.5.0"
  sha256 "f7ac126ace395c33bcb4e9d7c80711e686716fdaf7a1b5d0fdf173925529b849"

  url "https://github.com/fil-technology/esh/releases/download/v#{version}/esh-macos-#{version}.zip"
  name "Esh"
  desc "Local-first LLM tool for Apple Silicon"
  homepage "https://github.com/fil-technology/esh"

  depends_on macos: ">= :ventura"
  depends_on formula: "python"

  binary "esh-macos-#{version}/bin/esh", target: "esh"
end
