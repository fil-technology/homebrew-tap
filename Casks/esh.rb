cask "esh" do
  version "2.3.0"
  sha256 "1a664a9396345becc11cac2785f716e4030eb85611df4c9870ad4bb9696ed290"

  url "https://github.com/fil-technology/esh/releases/download/v#{version}/esh-macos-#{version}.zip"
  name "Esh"
  desc "Local-first LLM tool for Apple Silicon"
  homepage "https://github.com/fil-technology/esh"

  depends_on macos: :ventura
  depends_on formula: "python"

  binary "esh-macos-#{version}/bin/esh", target: "esh"
end
