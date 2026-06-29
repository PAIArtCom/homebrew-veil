# Homebrew formula template for Veil
#
# The release workflow renders this template with real SHA256 values and can publish the
# generated file to PAIArtCom/homebrew-veil/Formula/veil.rb.
#
# Generate locally with:
#   scripts/gen-homebrew-formula.sh <version>

class Veil < Formula
  desc "Local de-identification proxy for AI coding agents"
  homepage "https://veil.sh"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/PAIArtCom/Veil/releases/download/v#{version}/veil-v#{version}-darwin-arm64.tar.gz"
      sha256 "5df53fd19dbaba78be4d55ac4a53e4772835628c2f9875e767e10e464d3defd0"
    end

    on_intel do
      url "https://github.com/PAIArtCom/Veil/releases/download/v#{version}/veil-v#{version}-darwin-amd64.tar.gz"
      sha256 "bf82993585b7296b2acdf21d63b5354884f304902b08fec0b3e5881708aa3e17"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/PAIArtCom/Veil/releases/download/v#{version}/veil-v#{version}-linux-arm64.tar.gz"
      sha256 "56da20cb03c38499e27b7d497d365c060d9829854fcd7f2f3cc6e9ba0ccd9e19"
    end

    on_intel do
      url "https://github.com/PAIArtCom/Veil/releases/download/v#{version}/veil-v#{version}-linux-amd64.tar.gz"
      sha256 "4e8ff430208063fdd576b53061ddd5fed57f2e08edb841a5599d5a23458ae5a7"
    end
  end

  def install
    bin.install "veil"
  end

  test do
    assert_match "veil", shell_output("#{bin}/veil version")
  end
end
