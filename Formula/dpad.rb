# Updated by spar/dpad's release workflow.
class Dpad < Formula
  desc "Stop juggling docker ps, stats and logs. One screen to rule them all"
  homepage "https://github.com/spar/dpad"
  version "0.19.1"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/spar/dpad/releases/download/v0.19.1/dpad-darwin-arm64.tar.gz"
      sha256 "21f6809407532fbdc412906b7cd9f62df8612e900941997e8d433840c50d202b"
    end
    on_intel do
      url "https://github.com/spar/dpad/releases/download/v0.19.1/dpad-darwin-amd64.tar.gz"
      sha256 "e84cc5a80736baa55b2ebc792903fc26a9b784928fbe8402db919ec27664b554"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spar/dpad/releases/download/v0.19.1/dpad-linux-arm64.tar.gz"
      sha256 "c4918bd3625a134e556eff0b35ee3f1561027a96148b7694c22cae4963834e59"
    end
    on_intel do
      url "https://github.com/spar/dpad/releases/download/v0.19.1/dpad-linux-amd64.tar.gz"
      sha256 "2609904b89605c5dff2d9dbf8bd145f1427f880b6f8eb9675d153738b7be3025"
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
