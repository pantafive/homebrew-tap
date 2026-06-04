cask "fader" do
  version "0.2.1"
  sha256 "d837b2b32ddd4809c4a6d520e74ec672fa46255e6fba24411cec724f3cefd265"

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
