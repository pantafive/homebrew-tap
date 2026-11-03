cask "fader" do
  version "0.22.0"
  sha256 "f990ee3d0268bc7caf29e63ce6ebcf3c0230044418bb603b92c5a09975a62c85"

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
