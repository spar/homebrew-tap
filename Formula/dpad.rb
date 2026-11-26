# Updated by spar/dpad's release workflow.
class Dpad < Formula
  desc "Colorful, interactive companion to the docker CLI"
  homepage "https://github.com/spar/dpad"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/spar/dpad/releases/download/v0.10.0/dpad-darwin-arm64.tar.gz"
      sha256 "5f282bd970430dbbb24bd4ca996658b5cb72ecba826c4ca0dfdb99962f2a5bc7"
    end
    on_intel do
      url "https://github.com/spar/dpad/releases/download/v0.10.0/dpad-darwin-amd64.tar.gz"
      sha256 "8c4b3776a6a9ed248081ccdd3fe58c80e5de2fe1be1acc5c26fca2cd48bf61fc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spar/dpad/releases/download/v0.10.0/dpad-linux-arm64.tar.gz"
      sha256 "f45d7e247754d6074c6cc98fd405d348448798a00df72a47429feb42657596bd"
    end
    on_intel do
      url "https://github.com/spar/dpad/releases/download/v0.10.0/dpad-linux-amd64.tar.gz"
      sha256 "8826bcfc27920243627bb41549805260fba80caf532e3fba9c6411638f34b17b"
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
