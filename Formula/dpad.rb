# Updated by spar/dpad's release workflow.
class Dpad < Formula
  desc "Colorful, interactive companion to the docker CLI"
  homepage "https://github.com/spar/dpad"
  version "0.11.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/spar/dpad/releases/download/v0.11.1/dpad-darwin-arm64.tar.gz"
      sha256 "883fc05756a492e0f4846b84dbf9c219ec15e279e33d012cd409482e6be4dc45"
    end
    on_intel do
      url "https://github.com/spar/dpad/releases/download/v0.11.1/dpad-darwin-amd64.tar.gz"
      sha256 "8731cea023ea59fa3e319700209e281a02225112fc1bc43421425fb38d1a478a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spar/dpad/releases/download/v0.11.1/dpad-linux-arm64.tar.gz"
      sha256 "977bc60608660ae4e80545b0a1f087d97884453a92f68e115c42224a24bfbfa5"
    end
    on_intel do
      url "https://github.com/spar/dpad/releases/download/v0.11.1/dpad-linux-amd64.tar.gz"
      sha256 "942d2d0a6c5d71a36184b1e161176fdfbf9d84db2b38600c9182d7f2e0486fff"
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
