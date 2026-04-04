cask "esh" do
  version "0.1.8"
  sha256 "043071021d8218ae359e010f8386760ade2033c374c84e40e1ea218d3eff7d4b"

  url "https://github.com/fil-technology/esh/releases/download/v#{version}/esh-macos-#{version}.tar.gz"
  name "Esh"
  desc "Local-first LLM tool for Apple Silicon"
  homepage "https://github.com/fil-technology/esh"

  depends_on macos: ">= :ventura"

  binary "esh-macos-#{version}/esh", target: "esh"
end
