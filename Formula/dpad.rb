# Updated by spar/dpad's release workflow.
class Dpad < Formula
  desc "Colorful, interactive companion to the docker CLI"
  homepage "https://github.com/spar/dpad"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/spar/dpad/releases/download/v0.11.0/dpad-darwin-arm64.tar.gz"
      sha256 "b3ae59cd1855c041ddb39fc03afb6b9bc55f739a978ad3bfb060f491d34cb17e"
    end
    on_intel do
      url "https://github.com/spar/dpad/releases/download/v0.11.0/dpad-darwin-amd64.tar.gz"
      sha256 "a8c9bb7f62393f8d8bf0b745e3ecc6eaec9c8aaa5d4867651a42d342399be6ae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spar/dpad/releases/download/v0.11.0/dpad-linux-arm64.tar.gz"
      sha256 "f9e078231b837fe196669a5221cd30a80f323bce6a2e32c3e573fb4d13f447aa"
    end
    on_intel do
      url "https://github.com/spar/dpad/releases/download/v0.11.0/dpad-linux-amd64.tar.gz"
      sha256 "febe42b0e8a045128b1b9ff3f8a7c7a541a78ebc0cb0ba60c41dc2638a32f25f"
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
