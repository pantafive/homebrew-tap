cask "fader" do
  version "0.17.0"
  sha256 "1d2c33cc5d03beedcd3ea758c4d9114d88a7ad29db23e0a6dba34471c7ee453e"

  url "https://github.com/pantafive/fader/releases/download/v#{version}/Fader-#{version}.dmg"
  name "Fader"
  desc "Per-app volume and one-click audio output switching in the menu bar"
  homepage "https://fader.pantafive.dev"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  depends_on macos: ">= :sequoia"

  app "Fader.app"

  zap trash: [
    "~/Library/Preferences/dev.pantafive.fader.plist",
  ]
end
