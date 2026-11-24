# Updated by spar/dpad's release workflow.
class Dpad < Formula
  desc "Colorful, interactive companion to the docker CLI"
  homepage "https://github.com/spar/dpad"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/spar/dpad/releases/download/v0.4.0/dpad-darwin-arm64.tar.gz"
      sha256 "df3eb2e236f678588ecd9f1353db6fa7ee61ed7c5de41fa4a0a49c702b16dc16"
    end
    on_intel do
      url "https://github.com/spar/dpad/releases/download/v0.4.0/dpad-darwin-amd64.tar.gz"
      sha256 "202e780a10e26635868ed64f1bfd5d5416687f1e77ebe129ba6700241a42ceec"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spar/dpad/releases/download/v0.4.0/dpad-linux-arm64.tar.gz"
      sha256 "9402ca6ec6d1f13ff2c65dc01c9580eef28c79f7b9b99bbadd1a15e018a16fb1"
    end
    on_intel do
      url "https://github.com/spar/dpad/releases/download/v0.4.0/dpad-linux-amd64.tar.gz"
      sha256 "4178abaa7ffb8848796e200f79e738bf8c56ce58aeee2f180befe699e050f63f"
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
