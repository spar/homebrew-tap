# Updated by spar/dpad's release workflow.
class Dpad < Formula
  desc "Colorful, interactive companion to the docker CLI"
  homepage "https://github.com/spar/dpad"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/spar/dpad/releases/download/v0.6.0/dpad-darwin-arm64.tar.gz"
      sha256 "1894fff8733e6e9ae391001855cce8f5cb0e77b96ca3131cf618d9ccae8e55a8"
    end
    on_intel do
      url "https://github.com/spar/dpad/releases/download/v0.6.0/dpad-darwin-amd64.tar.gz"
      sha256 "c079a885e57ac16353e97714d43ed179fa12c320c522228641c6394d9522c7db"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spar/dpad/releases/download/v0.6.0/dpad-linux-arm64.tar.gz"
      sha256 "5e99e5d778798963472a839683b5b64eba82f9688eb008490b5afbd6252fdf92"
    end
    on_intel do
      url "https://github.com/spar/dpad/releases/download/v0.6.0/dpad-linux-amd64.tar.gz"
      sha256 "eb72f8340d12b0816f6499667e1b0cd4a37eed3dfb2375a67b8934a34bc260df"
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
