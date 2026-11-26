# Updated by spar/dpad's release workflow.
class Dpad < Formula
  desc "Colorful, interactive companion to the docker CLI"
  homepage "https://github.com/spar/dpad"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/spar/dpad/releases/download/v0.14.0/dpad-darwin-arm64.tar.gz"
      sha256 "0398e9722e4b7711189eb552ffb7203d894a5c61557e33ff4a680ed2b7e5d08e"
    end
    on_intel do
      url "https://github.com/spar/dpad/releases/download/v0.14.0/dpad-darwin-amd64.tar.gz"
      sha256 "5f782204fec608295b4834eb44b92a39b00dca4b64c01c9e55216f6ef27f7602"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spar/dpad/releases/download/v0.14.0/dpad-linux-arm64.tar.gz"
      sha256 "c7cd41848b91292aaab4f7592b69a41e994b96292482fbee4db8c08c434c101a"
    end
    on_intel do
      url "https://github.com/spar/dpad/releases/download/v0.14.0/dpad-linux-amd64.tar.gz"
      sha256 "b4906f93373c708ab80b3a5c99325030f156eda95132db7d6f539a8a4d91ca12"
    end
  end

  def install
    bin.install "dpad"
    bin.install_symlink "dpad" => "dp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dp --version")
  end
end
