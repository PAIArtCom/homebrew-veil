# Homebrew formula template for Veil
#
# The release workflow renders this template with real SHA256 values and can publish the
# generated file to PAIArtCom/homebrew-veil/Formula/veil.rb.
#
# Generate locally with:
#   scripts/gen-homebrew-formula.sh <version>

class Veil < Formula
  desc "Local de-identification proxy for AI coding agents"
  homepage "https://veil.paiart.com"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/PAIArtCom/Veil/releases/download/v#{version}/veil-v#{version}-darwin-arm64.tar.gz"
      sha256 "f16510b553de60e2f56941544d6688e49ad18ece979a0ea1c57b5b949209a7d3"
    end

    on_intel do
      url "https://github.com/PAIArtCom/Veil/releases/download/v#{version}/veil-v#{version}-darwin-amd64.tar.gz"
      sha256 "a4f77166954bce7a629dae0625383f938eda1a3853c968382092f03b2abcc2f4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/PAIArtCom/Veil/releases/download/v#{version}/veil-v#{version}-linux-arm64.tar.gz"
      sha256 "5a5374592790c29beaec204a2338cdda9fe923a759772b72405b010a78027182"
    end

    on_intel do
      url "https://github.com/PAIArtCom/Veil/releases/download/v#{version}/veil-v#{version}-linux-amd64.tar.gz"
      sha256 "6f7e8d4c4f57b12237d2e0cd45ed7a71ee49eb05e91b062c5685e0757deb7b91"
    end
  end

  def install
    bin.install "veil"
  end

  test do
    assert_match "veil", shell_output("#{bin}/veil version")
  end
end
