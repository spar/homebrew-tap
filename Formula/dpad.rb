# Updated by spar/dpad's release workflow.
class Dpad < Formula
  desc "Colorful, interactive companion to the docker CLI"
  homepage "https://github.com/spar/dpad"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/spar/dpad/releases/download/v0.12.0/dpad-darwin-arm64.tar.gz"
      sha256 "cc5dd7273284ecf808c6105f784f3bc486b0be93b8962e8b84f6cbc9a8f38ed8"
    end
    on_intel do
      url "https://github.com/spar/dpad/releases/download/v0.12.0/dpad-darwin-amd64.tar.gz"
      sha256 "726e37573d0056438267776e61c7332c44d905a8a08311fbc1eaecc0f372161c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spar/dpad/releases/download/v0.12.0/dpad-linux-arm64.tar.gz"
      sha256 "de54acc432adbbb513cb18fd65d63d39520c286d15ef4e22ea51eb328b64e289"
    end
    on_intel do
      url "https://github.com/spar/dpad/releases/download/v0.12.0/dpad-linux-amd64.tar.gz"
      sha256 "785abb38cc20eadec79f5576c17fc9e78d5f859c3eb5865d67e4daf06fbf437f"
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
