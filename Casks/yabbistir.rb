cask "yabbistir" do
  version "0.4.1"
  sha256 "22d222a36aa50e6089951067afd99197ae59c85f4db7404030b30ab039dff911"

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
