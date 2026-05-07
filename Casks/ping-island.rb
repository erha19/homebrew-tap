cask "ping-island" do
  version "0.11.2"
  sha256 "14ca4313de91e87a94626d8abededd27b753746bf1c5bb22fcde4ab568aabb86"

  url "https://github.com/erha19/ping-island/releases/download/v#{version}/PingIsland-#{version}.dmg",
      verified: "github.com/erha19/ping-island/"
  name "Ping Island"
  desc "Dynamic Island-style status for coding agent sessions"
  homepage "https://erha19.github.io/ping-island/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Ping Island.app"

  zap trash: [
    "~/Library/Application Support/PingIsland",
    "~/Library/Caches/com.wudanwu.PingIsland",
    "~/Library/HTTPStorages/com.wudanwu.PingIsland",
    "~/Library/Preferences/com.wudanwu.PingIsland.plist",
    "~/Library/Saved Application State/com.wudanwu.PingIsland.savedState",
  ]
end
