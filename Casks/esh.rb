cask "esh" do
  version "2.1.0"
  sha256 "7f64cc3f948d1edd821af6297eb2533588ebaab0a39ebf03dcfebc2a33958af5"

  url "https://github.com/fil-technology/esh/releases/download/v#{version}/esh-macos-#{version}.zip"
  name "Esh"
  desc "Local-first LLM tool for Apple Silicon"
  homepage "https://github.com/fil-technology/esh"

  depends_on macos: :ventura
  depends_on formula: "python"

  binary "esh-macos-#{version}/bin/esh", target: "esh"
end
