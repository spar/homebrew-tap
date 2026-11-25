# Updated by spar/dpad's release workflow.
class Dpad < Formula
  desc "Colorful, interactive companion to the docker CLI"
  homepage "https://github.com/spar/dpad"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/spar/dpad/releases/download/v0.8.0/dpad-darwin-arm64.tar.gz"
      sha256 "8c1150688a5fa1d8349084a6c75b5dcd70bef951fd324517674c0c27b012e57e"
    end
    on_intel do
      url "https://github.com/spar/dpad/releases/download/v0.8.0/dpad-darwin-amd64.tar.gz"
      sha256 "e24df957b2c49d6c90a4d2b8ddcdd801e8f0818b78f6a2f3598bf3ae8cd864ce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spar/dpad/releases/download/v0.8.0/dpad-linux-arm64.tar.gz"
      sha256 "dd03ffcbdeea9f077c2b1b27131be0ce6ee21de59eeb7fbcd7f4112d6436c566"
    end
    on_intel do
      url "https://github.com/spar/dpad/releases/download/v0.8.0/dpad-linux-amd64.tar.gz"
      sha256 "ee552ca63365d2c8c08a7b555c7dbc6d2982a06c31e32ec2dc5ac57f60fcc9b2"
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
