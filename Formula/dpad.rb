# Updated by spar/dpad's release workflow.
class Dpad < Formula
  desc "Colorful, interactive companion to the docker CLI"
  homepage "https://github.com/spar/dpad"
  version "0.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/spar/dpad/releases/download/v0.16.0/dpad-darwin-arm64.tar.gz"
      sha256 "0107790100f3c3a3f9d906e699a380c1d781cfba974a58ffb21b7cd4e10cae63"
    end
    on_intel do
      url "https://github.com/spar/dpad/releases/download/v0.16.0/dpad-darwin-amd64.tar.gz"
      sha256 "247c28b7a5d09f44d0a22f3df467c54bd6649dc7751120a772c5daddd983daa6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spar/dpad/releases/download/v0.16.0/dpad-linux-arm64.tar.gz"
      sha256 "fffec2be37ce6174572c2f2d2009cc26dce8e14e305b8fea4d5a296aae65c0e8"
    end
    on_intel do
      url "https://github.com/spar/dpad/releases/download/v0.16.0/dpad-linux-amd64.tar.gz"
      sha256 "1139868821418f70c199170f5926346859b4925596e8da6d57b788f9ad78cb40"
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
