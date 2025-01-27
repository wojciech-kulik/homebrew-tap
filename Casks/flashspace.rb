cask "flashspace" do
  version "0.8.10"
  sha256 "2f4b5aa89706a9bac0333cf1fe85f408a96bcd30ca4249c4623ee8ba83205b6c"

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
