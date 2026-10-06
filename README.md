# Homebrew tap for Versoline

[Versoline](https://github.com/bezelye404/Versoline) is a free and open-source RSS reader and podcast player for Mac.

```bash
brew install --cask bezelye404/versoline/versoline
```

Update with `brew upgrade --cask versoline`, remove with `brew uninstall --cask versoline` (add `--zap` to also delete its data).

Versoline is signed ad hoc and not notarized, so this cask clears the quarantine flag after installing; the app then opens without the Gatekeeper warning. If you prefer to keep the flag, download the `.dmg` from the [releases page](https://github.com/bezelye404/Versoline/releases) instead.

Requires macOS 15 (Sequoia) or later.
