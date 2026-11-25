# Updated by spar/dpad's release workflow.
class Dpad < Formula
  desc "Colorful, interactive companion to the docker CLI"
  homepage "https://github.com/spar/dpad"
  version "0.8.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/spar/dpad/releases/download/v0.8.1/dpad-darwin-arm64.tar.gz"
      sha256 "9cdc6189a0a20cc81359e685ba5a20bdf02e08732ecdc452c0da67dde12b298b"
    end
    on_intel do
      url "https://github.com/spar/dpad/releases/download/v0.8.1/dpad-darwin-amd64.tar.gz"
      sha256 "bbf019b5bfdd5a5adb08213fb233f1f4dab48f2fe11e4c900fef7840d6d16ac9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spar/dpad/releases/download/v0.8.1/dpad-linux-arm64.tar.gz"
      sha256 "cdecd8ab1950c6496d3b54e687b8a4dd71424db505d47baf875f4f4961921b13"
    end
    on_intel do
      url "https://github.com/spar/dpad/releases/download/v0.8.1/dpad-linux-amd64.tar.gz"
      sha256 "b5ff81efad74a019107673c2b8504e8f31fe7fb19829c5f6b2f18ced5674f2ed"
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
