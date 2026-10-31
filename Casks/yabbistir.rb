cask "yabbistir" do
  version "0.2.0"
  sha256 "34accdc0d7f8df6b6a6403bb4b7394bf452e3b3e740eca6ebbe383a4092ef36f"

  url "https://github.com/berkaygkc/yabbistir/releases/download/v#{version}/yabbistir-#{version}.dmg"
  name "yabbistir"
  desc "Keyboard-first clipboard history that opens under the text caret"
  homepage "https://github.com/berkaygkc/yabbistir"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "yabbistir.app"

  uninstall quit: "dev.yabbistir.app"

  zap trash: [
    "~/Library/Application Support/yabbistir",
    "~/Library/Caches/dev.yabbistir.app",
    "~/Library/HTTPStorages/dev.yabbistir.app",
    "~/Library/Preferences/dev.yabbistir.app.plist",
    "~/Library/Preferences/dev.yabbistir.extensions.plist",
  ]
end
