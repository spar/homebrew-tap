# Updated by spar/dpad's release workflow.
class Dpad < Formula
  desc "Stop juggling docker ps, stats and logs. One screen to rule them all"
  homepage "https://github.com/spar/dpad"
  version "0.19.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/spar/dpad/releases/download/v0.19.0/dpad-darwin-arm64.tar.gz"
      sha256 "d19658d053a9a00a549bf7c9767d8cb12b47c19ec8c077ce883d60d4b90e3403"
    end
    on_intel do
      url "https://github.com/spar/dpad/releases/download/v0.19.0/dpad-darwin-amd64.tar.gz"
      sha256 "7717f51e1e60c58a443fa3001303dc9a1d4e3f38d18afa51ed809525d7a53898"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spar/dpad/releases/download/v0.19.0/dpad-linux-arm64.tar.gz"
      sha256 "864b7ea53c3f1747fc2dc3c1951d8ad13bc3e73d4642cf229efdc93b40867e0f"
    end
    on_intel do
      url "https://github.com/spar/dpad/releases/download/v0.19.0/dpad-linux-amd64.tar.gz"
      sha256 "34cea3ce4475e815d113835262d877d6d2fc0c1c0ba908851c519a42f85afb8d"
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
