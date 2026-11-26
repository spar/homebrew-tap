# Updated by spar/dpad's release workflow.
class Dpad < Formula
  desc "Colorful, interactive companion to the docker CLI"
  homepage "https://github.com/spar/dpad"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/spar/dpad/releases/download/v0.13.0/dpad-darwin-arm64.tar.gz"
      sha256 "bad8bb7757671c37a9b9a802d217b550baddcb48e1172cfb2d8b04c23544690b"
    end
    on_intel do
      url "https://github.com/spar/dpad/releases/download/v0.13.0/dpad-darwin-amd64.tar.gz"
      sha256 "8efb4a3f51a2c2f03f3d93b0be1e635715be79fb2ef9181dfefbfe6df594339e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spar/dpad/releases/download/v0.13.0/dpad-linux-arm64.tar.gz"
      sha256 "f170878a81d1056099fdb29ccc225255e930290ac87fa08b9be0e9cb4be3a592"
    end
    on_intel do
      url "https://github.com/spar/dpad/releases/download/v0.13.0/dpad-linux-amd64.tar.gz"
      sha256 "ffc095d58167a4456f4f824bd2ede1098f0a0517a3dde4e214fb3413d8132444"
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
