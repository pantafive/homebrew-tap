cask "fader" do
  version "0.18.0"
  sha256 "47b434ba434220d28b0998979f9a03bc179daaecfe8a5461fb66ecaede4231bf"

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
