cask "esh" do
  version "0.9.0"
  sha256 "051138b83b5a4ae32b040c68d12bab336e91811d9a2d90e14d08ae9e809978a5"

  url "https://github.com/fil-technology/esh/releases/download/v#{version}/esh-macos-#{version}.zip"
  name "Esh"
  desc "Local-first LLM tool for Apple Silicon"
  homepage "https://github.com/fil-technology/esh"

  depends_on macos: :ventura
  depends_on formula: "python"

  binary "esh-macos-#{version}/bin/esh", target: "esh"
end
