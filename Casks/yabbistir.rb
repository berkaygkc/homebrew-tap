cask "yabbistir" do
  version "0.3.0"
  sha256 "8bf079fd3af1d37f0d7cb7cbe1980d25e3d34a53eb42055ed913f7caf816ac30"

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
