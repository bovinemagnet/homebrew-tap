cask "adocfoundry" do
  version "0.9.0"
  sha256 "1caebffe2e90e2a94a715b14bef3c3d13ff9154bc5bf86de699d2c5f1892d9d9"

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
