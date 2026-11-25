# Updated by spar/dpad's release workflow.
class Dpad < Formula
  desc "Colorful, interactive companion to the docker CLI"
  homepage "https://github.com/spar/dpad"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/spar/dpad/releases/download/v0.5.0/dpad-darwin-arm64.tar.gz"
      sha256 "ee6180eb48b11670cfd5edf666635334fd2a690f32334fa63b389583e878e0d2"
    end
    on_intel do
      url "https://github.com/spar/dpad/releases/download/v0.5.0/dpad-darwin-amd64.tar.gz"
      sha256 "96c078cbaf2e5552c789581150f4db048364abeb1d1e1498be951c7d1c9ce47b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spar/dpad/releases/download/v0.5.0/dpad-linux-arm64.tar.gz"
      sha256 "75d44158214d1e5bd549ef3a0af98acaf4ca9ab99ad519484c5dafc7af60673e"
    end
    on_intel do
      url "https://github.com/spar/dpad/releases/download/v0.5.0/dpad-linux-amd64.tar.gz"
      sha256 "b95494f17aede59004ba26bee402883831db41e9a142b3e916102c1851e05980"
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
