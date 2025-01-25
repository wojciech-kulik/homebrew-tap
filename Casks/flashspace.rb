cask "flashspace" do
  version "0.6.8"
  sha256 "b91306f3a589b1fe56aa7314af89aeb8c056ac3c1e600b3a26ed16f7da6a73e1"

  url "https://github.com/wojciech-kulik/FlashSpace/releases/download/v#{version}/FlashSpace.app.zip"
  name "FlashSpace"
  desc "Blazingly fast virtual workspace manager for macOS"
  homepage "https://github.com/wojciech-kulik/FlashSpace"

  depends_on macos: ">= :sonoma"

  app "FlashSpace.app"

  zap trash: [
    "~/Library/Application Scripts/pl.wojciechkulik.FlashSpace",
    "~/Library/Caches/pl.wojciechkulik.FlashSpace",
    "~/Library/Preferences/pl.wojciechkulik.FlashSpace.plist",
    "~/Library/Preferences/FlashSpace.plist",
    "~/Library/HTTPStorages/pl.wojciechkulik.FlashSpace",
    "~/Library/Saved Application State/pl.wojciechkulik.FlashSpace.savedState",
    "~/Library/Autosave Information/pl.wojciechkulik.FlashSpace.plist",
  ]
end
