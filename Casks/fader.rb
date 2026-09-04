cask "fader" do
  version "0.20.1"
  sha256 "72a9a9af749d7f4d93b6dcd6cbaaa4f7ba4cedd7d1cccbc087113a679b13ef17"

  url "https://github.com/pantafive/fader/releases/download/v#{version}/Fader-#{version}.dmg"
  name "Fader"
  desc "Per-app volume and one-click audio output switching in the menu bar"
  homepage "https://fader.pantafive.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Fader.app"

  zap trash: "~/Library/Preferences/dev.pantafive.fader.plist"
end
