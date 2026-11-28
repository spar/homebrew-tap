# Updated by spar/dpad's release workflow.
class Dpad < Formula
  desc "Stop juggling docker ps, stats and logs. One screen to rule them all"
  homepage "https://github.com/spar/dpad"
  version "0.18.1"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/spar/dpad/releases/download/v0.18.1/dpad-darwin-arm64.tar.gz"
      sha256 "2ecfa235d9d341e60d501a60583ed6c714816cfdd7a8e674d05e6c6154009a3c"
    end
    on_intel do
      url "https://github.com/spar/dpad/releases/download/v0.18.1/dpad-darwin-amd64.tar.gz"
      sha256 "a1365d1f4e9634a4dc29512ccc37e12c0d7f14f46867df96cc19aaf885b87b19"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spar/dpad/releases/download/v0.18.1/dpad-linux-arm64.tar.gz"
      sha256 "09a52a7c6e26804f777db570e3682f003df1a211a4ce1e71463e0edc57b4e06c"
    end
    on_intel do
      url "https://github.com/spar/dpad/releases/download/v0.18.1/dpad-linux-amd64.tar.gz"
      sha256 "dd1379d7580d88d44e37a2a8afa40c529df9f4001d2d01a984012100a8813187"
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
