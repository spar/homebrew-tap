# Updated by spar/dpad's release workflow.
class Dpad < Formula
  desc "Colorful, interactive companion to the docker CLI"
  homepage "https://github.com/spar/dpad"
  version "0.8.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/spar/dpad/releases/download/v0.8.2/dpad-darwin-arm64.tar.gz"
      sha256 "093d555dad4903669f18ff18dfd49649d1fd797804fa755b7f2c7d85bceb03f9"
    end
    on_intel do
      url "https://github.com/spar/dpad/releases/download/v0.8.2/dpad-darwin-amd64.tar.gz"
      sha256 "c0594048a1358bc8cdb3274f7b90cd8a9ae3dcbea74a7b5f6a0d16f022e9014b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spar/dpad/releases/download/v0.8.2/dpad-linux-arm64.tar.gz"
      sha256 "f2b5f5597d5b310f9862b46523ca7e842ce4d74008d205b7b85982061dc6ca15"
    end
    on_intel do
      url "https://github.com/spar/dpad/releases/download/v0.8.2/dpad-linux-amd64.tar.gz"
      sha256 "608c86b9a140d9e899fa89b8f153cd188b6ebdffd794117760891e68b0b5c203"
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
