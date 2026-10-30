cask "cheapshot" do
  version "0.1.9"
  sha256 "d4d1097ec033a80d8a6ce31579f15c0f61267ea98d526c934f359f7120d3eeaf"

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
