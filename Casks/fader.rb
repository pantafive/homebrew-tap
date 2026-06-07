cask "fader" do
  version "0.11.0"
  sha256 "b756fb312ea961e5c10fd6cd7cef613ef318eaa70405e2d3297b3e57162a6b55"

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
