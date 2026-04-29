cask "esh" do
  version "0.1.35"
  sha256 "a7e57c09534ed43c8f72ccb83c14631722494ebe7949daef71c5698644d0e100"

  url "https://github.com/fil-technology/esh/releases/download/v#{version}/esh-macos-#{version}.zip"
  name "Esh"
  desc "Local-first LLM tool for Apple Silicon"
  homepage "https://github.com/fil-technology/esh"

  depends_on macos: ">= :ventura"
  depends_on formula: "python"

  binary "esh-macos-#{version}/bin/esh", target: "esh"
end
