cask "yabbistir" do
  version "0.5.0"
  sha256 "d790bbb0bcb073c7962f25f59300779a3585a804e0e8a54cfb73d50f15f6d27c"

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
