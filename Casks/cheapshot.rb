cask "cheapshot" do
  version "0.1.1"
  sha256 "7bbabb3907d609a8cc566817d72f7b48a366e1a8524990f7ac3bf6c31457f92e"

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
