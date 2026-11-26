# Updated by spar/dpad's release workflow.
class Dpad < Formula
  desc "Colorful, interactive companion to the docker CLI"
  homepage "https://github.com/spar/dpad"
  version "0.8.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/spar/dpad/releases/download/v0.8.3/dpad-darwin-arm64.tar.gz"
      sha256 "e0a8356eb9c8b44c43d963f03ed083822f66fddaded406a233deed46612dc5b9"
    end
    on_intel do
      url "https://github.com/spar/dpad/releases/download/v0.8.3/dpad-darwin-amd64.tar.gz"
      sha256 "683893a547b72f388278e57a57771510ba7328fc17f801b87a757641f22dc939"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spar/dpad/releases/download/v0.8.3/dpad-linux-arm64.tar.gz"
      sha256 "f5c85c83d965499859377408c98fded8459fd36213ff1106aa1817df2a23c8a4"
    end
    on_intel do
      url "https://github.com/spar/dpad/releases/download/v0.8.3/dpad-linux-amd64.tar.gz"
      sha256 "d53b713bf9c698bf65903fdee00bd141de08546c462a16f4a42e773ebc009184"
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
