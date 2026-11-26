# Updated by spar/dpad's release workflow.
class Dpad < Formula
  desc "Colorful, interactive companion to the docker CLI"
  homepage "https://github.com/spar/dpad"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/spar/dpad/releases/download/v0.9.0/dpad-darwin-arm64.tar.gz"
      sha256 "2369477ee200e6b4ece9eba622180c5494a8995878202445768fdaabbee237fb"
    end
    on_intel do
      url "https://github.com/spar/dpad/releases/download/v0.9.0/dpad-darwin-amd64.tar.gz"
      sha256 "bbebe539689ed7068a668980a0f20f033f477e31ea053739777b3d46fb75c769"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spar/dpad/releases/download/v0.9.0/dpad-linux-arm64.tar.gz"
      sha256 "75ebf333f7b3c15e392bedd8e45799711830d37fb8fa2a9e3c42d6e9ff9e2625"
    end
    on_intel do
      url "https://github.com/spar/dpad/releases/download/v0.9.0/dpad-linux-amd64.tar.gz"
      sha256 "6054aeb051d680dc324043ecb9d71d4466af840b0fc1d74d0368d1705c75ddea"
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
