# Updated by spar/dpad's release workflow.
class Dpad < Formula
  desc "Stop juggling docker ps, stats and logs. One screen to rule them all"
  homepage "https://github.com/spar/dpad"
  version "0.18.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/spar/dpad/releases/download/v0.18.0/dpad-darwin-arm64.tar.gz"
      sha256 "a031e858201c601cae28e3d686617d9dc3f26ae5f5ddde58ed3bef1eb8041197"
    end
    on_intel do
      url "https://github.com/spar/dpad/releases/download/v0.18.0/dpad-darwin-amd64.tar.gz"
      sha256 "6991a78aa3ffed2ff2bedac2018da74d86b76faa48e305e58157f1e85de7ff1d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spar/dpad/releases/download/v0.18.0/dpad-linux-arm64.tar.gz"
      sha256 "0b0dfafff2262c69a23e6eb5baae65fdc60d065322f27382322969a25b77e6d4"
    end
    on_intel do
      url "https://github.com/spar/dpad/releases/download/v0.18.0/dpad-linux-amd64.tar.gz"
      sha256 "27cfe4388f732a5922147d63cda1abef9f112dddf49a2570636d840c4eb5f971"
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
