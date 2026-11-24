cask "adocfoundry" do
  version "0.14.0"
  sha256 "fef55d9260d64f6ad5c4d152b1dfab83fdf379755f15faf0e3ee4f3a42d84697"

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
