cask "adocfoundry" do
  version "0.7.0"
  sha256 "2c716c34ba4ff996203e5ca272a13de5b0c20fd54171be90fe5fcb4ae7fcd958"

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
