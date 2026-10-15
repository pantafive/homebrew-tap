cask "fader" do
  version "0.21.0"
  sha256 "0b923817862611cebbc58f3cbeb1fafec0b9c95510ce6bafbec4797f9fd800dc"

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
