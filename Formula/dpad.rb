# Updated by spar/dpad's release workflow.
class Dpad < Formula
  desc "Colorful, interactive companion to the docker CLI"
  homepage "https://github.com/spar/dpad"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/spar/dpad/releases/download/v0.7.0/dpad-darwin-arm64.tar.gz"
      sha256 "06684e307363b46c3763610c73f1ddb55aab823f7fa307f39ce21da3249363b8"
    end
    on_intel do
      url "https://github.com/spar/dpad/releases/download/v0.7.0/dpad-darwin-amd64.tar.gz"
      sha256 "fa553400571a4114a5cd8abf28190356738b033cd3e843a9f2c560baa48cbda0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spar/dpad/releases/download/v0.7.0/dpad-linux-arm64.tar.gz"
      sha256 "5e91f579f5926a610d80434f4e05fb86c33e3889b45d56f446f702bb3f70df29"
    end
    on_intel do
      url "https://github.com/spar/dpad/releases/download/v0.7.0/dpad-linux-amd64.tar.gz"
      sha256 "03f4952ab0a77dff58405264d2088fd7992f95526a7833ef5bf0de43d1cd975c"
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
