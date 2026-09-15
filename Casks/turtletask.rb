cask "turtletask" do
  version "0.1.0"
  sha256 "9f030a744e5bc49c2f673c42506e96dcfb5bdc0ff1c85de73880ad024c94056b"

  url "https://github.com/raindanc-ing/homebrew-turtletask/releases/download/desktop-v#{version}/TurtleTask_#{version}_universal.dmg"
  name "TurtleTask"
  desc "Spotlight-style palette for the TurtleTask task board"
  homepage "https://turtletask.app/"

  depends_on macos: :catalina

  app "TurtleTask.app"

  zap trash: [
    "~/Library/Application Support/app.turtletask.desktop",
    "~/Library/Caches/app.turtletask.desktop",
    "~/Library/Saved Application State/app.turtletask.desktop.savedState",
    "~/Library/WebKit/app.turtletask.desktop",
  ]
end
