# Updated by spar/dpad's release workflow.
class Dpad < Formula
  desc "Stop juggling docker ps, stats and logs. One screen to rule them all"
  homepage "https://github.com/spar/dpad"
  version "0.17.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/spar/dpad/releases/download/v0.17.1/dpad-darwin-arm64.tar.gz"
      sha256 "7c549169996010b4f8dd3828cab36df3876d2b0a19d1cbe7d2790ba4276c8485"
    end
    on_intel do
      url "https://github.com/spar/dpad/releases/download/v0.17.1/dpad-darwin-amd64.tar.gz"
      sha256 "c606de32768d9aee16820a1d9551289f389288210131d2e53ebe657503a2135d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spar/dpad/releases/download/v0.17.1/dpad-linux-arm64.tar.gz"
      sha256 "bf92dca04a0fc5c65f2974baa942594c1cf8a8c35e7c9f1e417f5d28ea87969b"
    end
    on_intel do
      url "https://github.com/spar/dpad/releases/download/v0.17.1/dpad-linux-amd64.tar.gz"
      sha256 "ed98fdeb73cbd62da34f333a03cbd486e46fe7bec2c4f77c6fb093ecf2cf8dc9"
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
