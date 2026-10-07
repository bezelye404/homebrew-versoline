cask "versoline" do
  version "0.4.1"
  sha256 "d6c3c882a6c6d59409823157049bea8ab67aa3cbc2dbe60238c2ddb958f1cddf"

  url "https://github.com/bezelye404/Versoline/releases/download/v#{version}/Versoline-#{version}.dmg"
  name "Versoline"
  desc "RSS reader and podcast player"
  homepage "https://github.com/bezelye404/Versoline"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Versoline.app"

  # The app is signed ad hoc and not notarized, so the quarantine flag would make Gatekeeper block the first launch.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Versoline.app"]
  end

  zap trash: [
    "~/Library/Application Scripts/com.bezelye.Versoline",
    "~/Library/Containers/com.bezelye.Versoline",
    "~/Library/Group Containers/group.com.bezelye.Versoline",
    "~/Library/Preferences/com.bezelye.Versoline.plist",
    "~/Library/Saved Application State/com.bezelye.Versoline.savedState",
  ]
end
