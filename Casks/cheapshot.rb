cask "cheapshot" do
  version "0.1.11"
  sha256 "5827e861ebf8353fc06f8d56ea2ff37e965db52de4fcff7a23aa543f8ffb45be"

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
