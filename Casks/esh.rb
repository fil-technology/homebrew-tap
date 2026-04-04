cask "esh" do
  version "0.1.16"
  sha256 "b73953b6a65abf71a1e5c74926e1e6cf80bbac69b79b9d2529c437a9f6f81acb"

  url "https://github.com/fil-technology/esh/releases/download/v#{version}/esh-macos-#{version}.zip"
  name "Esh"
  desc "Local-first LLM tool for Apple Silicon"
  homepage "https://github.com/fil-technology/esh"

  depends_on macos: ">= :ventura"
  depends_on formula: "python"

  binary "esh-macos-#{version}/bin/esh", target: "esh"
end
