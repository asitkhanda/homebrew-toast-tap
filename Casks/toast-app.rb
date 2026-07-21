cask "toast-app" do
  version "0.4.1"
  sha256 "774c9cbbbacc88bbd821694ba27b46ff2437b0394b47c2dabe3b8bcfa70eb595"

  url "https://github.com/asitkhanda/toast/releases/download/v#{version}/Toast-#{version}.dmg"
  name "Toast"
  desc "Toast is a menu bar app (no Dock icon) to check your Vercel deployments live. A read-only Vercel personal access token is required to use it."
  homepage "https://toast.asit.space/"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Toast.app"

  auto_updates true

  caveats <<~EOS
    Toast is Developer ID signed and notarized. It should open normally from Applications or Homebrew.
  EOS

  zap trash: [
    "~/Library/Application Support/com.toast.app",
    "~/Library/Preferences/com.toast.app.plist",
  ]
end
