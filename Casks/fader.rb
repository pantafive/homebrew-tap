cask "fader" do
  version "0.4.0"
  sha256 "29f80a775d24294e76651950be11dfa7c0122255fda4bae01fa236d87f5c588a"

  url "https://github.com/pantafive/fader/releases/download/v#{version}/Fader-#{version}.dmg"
  name "Fader"
  desc "Per-app volume and one-click audio output switching in the menu bar"
  homepage "https://fader.pantafive.dev"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  app "Fader.app"

  zap trash: [
    "~/Library/Preferences/dev.pantafive.fader.plist",
  ]
end
