# homebrew-proxymate

Homebrew tap for [Proxymate](https://fabriziosalmi.github.io/proxymate/) — a privacy-first macOS menu-bar proxy with built-in WAF, TLS interception, and AI agent controls.

## Install

```bash
brew tap fabriziosalmi/proxymate
brew install --cask proxymate
```

That's it — Proxymate appears in `/Applications` and in your menu bar on next launch.

## Update

```bash
brew update
brew upgrade --cask proxymate
```

## Uninstall

```bash
brew uninstall --cask proxymate       # removes the app
brew untap fabriziosalmi/proxymate    # optional: removes this tap
```

The `zap` stanza cleans up user data (`~/Library/Application Support/Proxymate`, caches, preferences). The Root CA in Keychain is **not** auto-removed — run the command shown in `brew info proxymate` if you want to purge it fully.

## Why a personal tap, not `homebrew-cask` core?

Homebrew-cask has an automatic notability threshold for new casks (≥30 stars / forks / watchers). The main Proxymate repo hasn't crossed it yet. This tap lets early users install via `brew` now; submission to `homebrew-cask` core will follow once the main repo meets the threshold.

## Links

- **App site:** https://fabriziosalmi.github.io/proxymate/
- **Source code:** https://github.com/fabriziosalmi/proxymate
- **Latest release:** https://github.com/fabriziosalmi/proxymate/releases/latest
- **Security model:** https://fabriziosalmi.github.io/proxymate/guide/security

## License

The cask formula in this repo is MIT-licensed like Proxymate itself. See [LICENSE](LICENSE).
