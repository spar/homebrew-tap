# Updated by spar/dpad's release workflow.
class Dpad < Formula
  desc "Colorful, interactive companion to the docker CLI"
  homepage "https://github.com/spar/dpad"
  version "0.16.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/spar/dpad/releases/download/v0.16.1/dpad-darwin-arm64.tar.gz"
      sha256 "28bf6222e8d5b2a009b1c6b94c15eed2c924514b8bc0c9a4855122c79fc92f87"
    end
    on_intel do
      url "https://github.com/spar/dpad/releases/download/v0.16.1/dpad-darwin-amd64.tar.gz"
      sha256 "f680208d7e26dfdb8d98917a1eb2cbe6e42cf8e596eedad7f0ca2b90386d6a39"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spar/dpad/releases/download/v0.16.1/dpad-linux-arm64.tar.gz"
      sha256 "8b18779120f162a5e0326bd2403463e6e61584c80bab7fa59a4500f3774df9d5"
    end
    on_intel do
      url "https://github.com/spar/dpad/releases/download/v0.16.1/dpad-linux-amd64.tar.gz"
      sha256 "1c3ed9dfbec3d88af9288ead2e7e366cc56e11f9b35a430c04689e5b7ee6de8d"
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
