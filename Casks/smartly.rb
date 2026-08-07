# This file mirrors what GoReleaser generates on release. Once the
# HOMEBREW_TAP_TOKEN secret exists in smartly-cli, releases update it
# automatically — do not edit by hand beyond that point.
cask "smartly" do
  version "0.1.0"

  on_macos do
    on_intel do
      sha256 "bc01cfad7ce68437bbb130f1a8899dddbef7b77915ff10ec253343fca0a2308f"
      url "https://github.com/rizwanreza/smartly-cli/releases/download/v0.1.0/smartly_darwin_amd64.tar.gz"
    end
    on_arm do
      sha256 "496bc38c5800fd40331de1ca171a3a329070f997eed1876ed191ec857a37894e"
      url "https://github.com/rizwanreza/smartly-cli/releases/download/v0.1.0/smartly_darwin_arm64.tar.gz"
    end
  end

  on_linux do
    on_intel do
      sha256 "719e3bbc48d0226083027584bc27895d45d256078b5095e0d89bffb58b2e7abf"
      url "https://github.com/rizwanreza/smartly-cli/releases/download/v0.1.0/smartly_linux_amd64.tar.gz"
    end
    on_arm do
      sha256 "36dc1d35618cdb8f69b218a584986bcc7e6afd05060d661d19d0fc732d19b759"
      url "https://github.com/rizwanreza/smartly-cli/releases/download/v0.1.0/smartly_linux_arm64.tar.gz"
    end
  end

  name "smartly"
  desc "Turn an English sentence into an executable shell command"
  homepage "https://github.com/rizwanreza/smartly-cli"

  livecheck do
    skip "Auto-generated on release."
  end

  binary "smartly"

  caveats <<~EOS
    smartly's binaries are not yet signed with an Apple Developer ID. If
    you installed without --no-quarantine, macOS Gatekeeper will block the
    binary — do NOT click "Move to Trash"; instead run:

      xattr -d com.apple.quarantine "$(brew --prefix)/Caskroom/smartly/"*/smartly

    Run `smartly config init` to write a default config, and
    `eval "$(smartly init bash)"` (or `init zsh`) in your shell rc file
    to enable commands that change directory or set environment variables.
  EOS
end
