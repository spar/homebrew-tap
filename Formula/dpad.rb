# Updated by spar/dpad's release workflow.
class Dpad < Formula
  desc "Colorful, interactive companion to the docker CLI"
  homepage "https://github.com/spar/dpad"
  version "0.16.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/spar/dpad/releases/download/v0.16.3/dpad-darwin-arm64.tar.gz"
      sha256 "fe4ef7f1013b33e2d3eaea1f67cf6774030cc10039dcc8d14dd9acb6b4d08618"
    end
    on_intel do
      url "https://github.com/spar/dpad/releases/download/v0.16.3/dpad-darwin-amd64.tar.gz"
      sha256 "c320e9961c8e090888bbe71d22679aea21f0cb0cd56bfd18e9bb23290e801843"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spar/dpad/releases/download/v0.16.3/dpad-linux-arm64.tar.gz"
      sha256 "9c06c2d438e091718735b7ecc67d98344f427449582efa1add6eca9506faf6f3"
    end
    on_intel do
      url "https://github.com/spar/dpad/releases/download/v0.16.3/dpad-linux-amd64.tar.gz"
      sha256 "58f195a4066665390693b01269f3861b89bcc3b299a4c74d3c0b7c5fdbf9d430"
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
