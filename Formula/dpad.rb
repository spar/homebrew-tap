# Updated by spar/dpad's release workflow.
class Dpad < Formula
  desc "Colorful, interactive companion to the docker CLI"
  homepage "https://github.com/spar/dpad"
  version "0.17.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/spar/dpad/releases/download/v0.17.0/dpad-darwin-arm64.tar.gz"
      sha256 "1a32f4e2bcd068827e9fcf88f99504b01b2ff29e59826889a9140049c8d15c1a"
    end
    on_intel do
      url "https://github.com/spar/dpad/releases/download/v0.17.0/dpad-darwin-amd64.tar.gz"
      sha256 "952438f825fa28249fad501438cc7e40a095e80a2207507b974e9b809b786400"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spar/dpad/releases/download/v0.17.0/dpad-linux-arm64.tar.gz"
      sha256 "e0f45aef480ebb5f02246edc8cf57932b47d3e2f3aa01eda891ff1139197fcd2"
    end
    on_intel do
      url "https://github.com/spar/dpad/releases/download/v0.17.0/dpad-linux-amd64.tar.gz"
      sha256 "bae9ba037f3d63c298805402d756b9a3649a37771bcdc808e941369cddb6650e"
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
