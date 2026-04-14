cask "proxymate" do
  version "0.9.50"
  sha256 "db313cc0e7757cab97f79517c73304c3dd608f6794e0cb96572e2e499ad475e6"

  url "https://github.com/fabriziosalmi/proxymate/releases/download/v#{version}/Proxymate-#{version}.dmg",
      verified: "github.com/fabriziosalmi/proxymate/"
  name "Proxymate"
  desc "Menu-bar proxy with WAF, TLS interception, and AI agent controls"
  homepage "https://fabriziosalmi.github.io/proxymate/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :tahoe"
  depends_on arch: :arm64

  app "proxymate.app"

  zap trash: [
    "~/Library/Application Support/Proxymate",
    "~/Library/Caches/com.fabriziosalmi.proxymate",
    "~/Library/Preferences/com.fabriziosalmi.proxymate.plist",
    "~/Library/Saved Application State/com.fabriziosalmi.proxymate.savedState",
  ]

  caveats <<~EOS
    Proxymate installs a local Root CA for optional TLS interception.
    The CA private key is stored AES-256 encrypted with a Keychain-bound
    passphrase. To fully remove it on uninstall:

      security delete-certificate -c "Proxymate Root CA" \\
        ~/Library/Keychains/login.keychain-db

    See https://fabriziosalmi.github.io/proxymate/guide/security for
    the full security model.
  EOS
end
