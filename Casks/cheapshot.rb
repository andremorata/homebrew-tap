cask "cheapshot" do
  version "0.1.4"
  sha256 "bde8330187b74ffbfb02b3c0a96ddb539115d40e4b601a074926257175a2a7f8"

  url "https://github.com/andremorata/cheapshot/releases/download/v#{version}/cheapshot-#{version}.zip"
  name "cheapshot"
  desc "Screen capture with annotation, OCR and recording"
  homepage "https://github.com/andremorata/cheapshot"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "cheapshot.app"

  zap trash: [
    "~/Library/Logs/cheapshot.log",
    "~/Library/Preferences/com.andremorata.cheapshot.plist",
  ]

  caveats <<~EOS
    cheapshot is not notarized. On first launch, open System Settings,
    go to Privacy & Security and click "Open Anyway".
  EOS
end
