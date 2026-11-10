cask "yabbistir" do
  version "0.5.1"
  sha256 "507608062869c6b66f4b4fdcdf07868769b6b8f9a1e58954b8990707a90f8b40"

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
