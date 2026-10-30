# Cask for Grove. Install with
#
#   brew install --cask atharvdesai/grove/grove
cask "grove" do
  version "0.1.0"
  sha256 "129bff1592a42bdf11823150a7068b0181469fee42e0045a9972914b59bbfd82"

  url "https://github.com/atharvdesai/grove/releases/download/v#{version}/Grove-#{version}.zip"
  name "Grove"
  desc "Meeting notes that listen without joining the call, written on your Mac"
  homepage "https://github.com/atharvdesai/grove"

  depends_on macos: ">= :tahoe"
  depends_on arch: :arm64

  app "Grove.app"

  # Early builds are not signed with a Developer ID, so macOS Gatekeeper
  # blocks the first launch. Approve it once: System Settings ->
  # Privacy & Security -> Open Anyway. Grove does not strip the quarantine
  # flag for you.

  zap trash: [
    "~/Library/Preferences/app.grove.Grove.plist",
  ]
end
