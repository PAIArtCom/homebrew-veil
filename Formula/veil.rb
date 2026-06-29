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
  version "0.1.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/PAIArtCom/Veil/releases/download/v#{version}/veil-v#{version}-darwin-arm64.tar.gz"
      sha256 "aa26b2796bafd970710fcda16dff1736e5319d5e4e2713bd3f5dc549e6836cfa"
    end

    on_intel do
      url "https://github.com/PAIArtCom/Veil/releases/download/v#{version}/veil-v#{version}-darwin-amd64.tar.gz"
      sha256 "8819895b17369e1ba7a55b1469e49eec7e14a73f767cbd3b9b0d1b8918a8146d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/PAIArtCom/Veil/releases/download/v#{version}/veil-v#{version}-linux-arm64.tar.gz"
      sha256 "274cb95f66c2a447e40328a5281a1eb4e01fb5c3ce09f9354ff53eac5a992391"
    end

    on_intel do
      url "https://github.com/PAIArtCom/Veil/releases/download/v#{version}/veil-v#{version}-linux-amd64.tar.gz"
      sha256 "0efa95eecc2ceb017692477c70a2a31ce7e06d27343520bcd17b0dc7ef9cfdf4"
    end
  end

  def install
    bin.install "veil"
  end

  test do
    assert_match "veil", shell_output("#{bin}/veil version")
  end
end
