cask "fader" do
  version "0.20.0"
  sha256 "52cd094e6e33a31c520d59a48c8ae19e1158b81a1f8f5991728c2309948116f8"

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
