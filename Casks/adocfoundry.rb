cask "adocfoundry" do
  version "0.15.0"
  sha256 "0ac8a17c989f3987151d62f9885263c44e3bc839eef0fc13f1a0215b4741d2a6"

  url "https://github.com/bovinemagnet/AdocFoundry/releases/download/v#{version}/AdocFoundry-#{version}-macos-universal.dmg"
  name "AdocFoundry"
  desc "Native desktop editor for AsciiDoc and Antora documentation"
  homepage "https://github.com/bovinemagnet/AdocFoundry"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "AdocFoundry.app"
  binary "#{appdir}/AdocFoundry.app/Contents/MacOS/adocfoundry-cli"
  binary "#{appdir}/AdocFoundry.app/Contents/MacOS/adoc-ls"
  binary "#{appdir}/AdocFoundry.app/Contents/MacOS/adoc-mcp"
end
