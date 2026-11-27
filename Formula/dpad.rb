# Updated by spar/dpad's release workflow.
class Dpad < Formula
  desc "Colorful, interactive companion to the docker CLI"
  homepage "https://github.com/spar/dpad"
  version "0.16.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/spar/dpad/releases/download/v0.16.2/dpad-darwin-arm64.tar.gz"
      sha256 "295937c39d82682bd4c6a75f332ffced1cf7d0db2f485ef82643367a1dc18692"
    end
    on_intel do
      url "https://github.com/spar/dpad/releases/download/v0.16.2/dpad-darwin-amd64.tar.gz"
      sha256 "9a63635556031f5c76e8928f03113a23d46b523a7351b7ee185efc20dcfc573f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spar/dpad/releases/download/v0.16.2/dpad-linux-arm64.tar.gz"
      sha256 "a259735016a36e823d64a3a9b85b62219f3accf459d0e190208e81924ac8ef5a"
    end
    on_intel do
      url "https://github.com/spar/dpad/releases/download/v0.16.2/dpad-linux-amd64.tar.gz"
      sha256 "b64d3935dff22f86a6d3c8e02caf9daba3fad63686c1a6189b776b1f7c532466"
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
