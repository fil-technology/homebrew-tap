cask "esh" do
  version "0.9.1"
  sha256 "5bef26e1ad2d9891df520c1590314bf05fc6a57a37adf18f936e2445d48f86ff"

  url "https://github.com/fil-technology/esh/releases/download/v#{version}/esh-macos-#{version}.zip"
  name "Esh"
  desc "Local-first LLM tool for Apple Silicon"
  homepage "https://github.com/fil-technology/esh"

  depends_on macos: :ventura
  depends_on formula: "python"

  binary "esh-macos-#{version}/bin/esh", target: "esh"
end
