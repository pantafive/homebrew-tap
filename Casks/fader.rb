cask "fader" do
  version "0.20.2"
  sha256 "60f3c51fcae28af82878e834ac092b3c59ca2d49761701cad9173ae6eebab89a"

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
