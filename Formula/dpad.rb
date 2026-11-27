# Updated by spar/dpad's release workflow.
class Dpad < Formula
  desc "Colorful, interactive companion to the docker CLI"
  homepage "https://github.com/spar/dpad"
  version "0.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/spar/dpad/releases/download/v0.15.0/dpad-darwin-arm64.tar.gz"
      sha256 "2085555d10ae29ab03d44865b13078fdca48261f4d8fbea284dd7f1f0cd5266e"
    end
    on_intel do
      url "https://github.com/spar/dpad/releases/download/v0.15.0/dpad-darwin-amd64.tar.gz"
      sha256 "0a7ec4766db9baf014b5e272d4ebb0ed1842d761cefac475a53c082f43d91efd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spar/dpad/releases/download/v0.15.0/dpad-linux-arm64.tar.gz"
      sha256 "b56aeaee96f5845ccda9f20c866eb114eaa6493d76fa2bc3b2d75528972424de"
    end
    on_intel do
      url "https://github.com/spar/dpad/releases/download/v0.15.0/dpad-linux-amd64.tar.gz"
      sha256 "d5e033cc1fa01aae7466f65c7574974fd2d1eb52333104c1534d61878b40c2df"
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
