cask "adocfoundry" do
  version "0.11.0"
  sha256 "a386ca5532b7f79370b6b96f992e39a1b898cb0c728d3fa073fa3e6459013929"

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
