cask "cheapshot" do
  version "0.1.8"
  sha256 "079dec201e1b66d00a15f6955c338bf2271c99b657c8bfe211456cfbcfff4717"

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
