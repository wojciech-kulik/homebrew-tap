cask "flashspace" do
  version "0.9.11"
  sha256 "e8006de4f2f8f5f7fec90168677c1640ac75740d6d8b692ae866761fafd7b59d"

  url "https://github.com/wojciech-kulik/FlashSpace/releases/download/v#{version}/FlashSpace.app.zip"
  name "FlashSpace"
  desc "Blazingly fast virtual workspace manager"
  homepage "https://github.com/wojciech-kulik/FlashSpace"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "FlashSpace.app"

  zap trash: [
    "~/Library/Application Scripts/pl.wojciechkulik.FlashSpace",
    "~/Library/Autosave Information/pl.wojciechkulik.FlashSpace.plist",
    "~/Library/Caches/pl.wojciechkulik.FlashSpace",
    "~/Library/HTTPStorages/pl.wojciechkulik.FlashSpace",
    "~/Library/Preferences/FlashSpace.plist",
    "~/Library/Preferences/pl.wojciechkulik.FlashSpace.plist",
    "~/Library/Saved Application State/pl.wojciechkulik.FlashSpace.savedState",
  ]
end
