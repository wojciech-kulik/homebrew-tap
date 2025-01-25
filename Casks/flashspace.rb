cask "flashspace" do
  version "0.6.7"
  sha256 "bf6811113836e0abf05e9e1a28ff5eafcf10f15a695e1e10d0117b141e160df1"

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
