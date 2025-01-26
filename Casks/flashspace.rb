cask "flashspace" do
  version "0.7.9"
  sha256 "20d4761bb5c8c51044eb34579ecfc1c5e48ed5d89a5eadda761bd8f4c9810dd3"

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
