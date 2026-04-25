cask "esh" do
  version "0.1.30"
  sha256 "6bb443c3f5f8e8477f5be70f1259a6e062a8fb3cb567a6bfc855001cb1e0ea44"

  url "https://github.com/fil-technology/esh/releases/download/v#{version}/esh-macos-#{version}.zip"
  name "Esh"
  desc "Local-first LLM tool for Apple Silicon"
  homepage "https://github.com/fil-technology/esh"

  depends_on macos: ">= :ventura"
  depends_on formula: "python"

  binary "esh-macos-#{version}/bin/esh", target: "esh"
end
