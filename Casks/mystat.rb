cask "mystat" do
  version "0.1.0"
  sha256 "0f6964410f319cd350b0a7a7e1276acaa9eacccb47adf16e1efa4b3f47568926"

  url "https://github.com/berkaygkc/mystat/releases/download/v#{version}/mystat-#{version}.dmg"
  name "mystat"
  desc "Calm system monitor for the menu bar"
  homepage "https://github.com/berkaygkc/mystat"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "mystat.app"

  uninstall quit: "com.berkaygokce.mystat"

  zap trash: [
    "~/Library/Application Support/mystat",
    "~/Library/Preferences/com.berkaygokce.mystat.plist",
  ]
end
