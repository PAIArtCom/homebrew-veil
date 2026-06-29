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
  version "0.1.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/PAIArtCom/Veil/releases/download/v#{version}/veil-v#{version}-darwin-arm64.tar.gz"
      sha256 "38ace1873c6cabe9ea4c8722c6af1cfa934a1e2efb0e9df2653bddd960c7a415"
    end

    on_intel do
      url "https://github.com/PAIArtCom/Veil/releases/download/v#{version}/veil-v#{version}-darwin-amd64.tar.gz"
      sha256 "0b848b665d7862f60312ab3bad814d2be7a6ffc47d15c00f9d9ccb4c768555fb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/PAIArtCom/Veil/releases/download/v#{version}/veil-v#{version}-linux-arm64.tar.gz"
      sha256 "dffd5bd282735feb81aded8fbd2de4b9e5b25b9e26f4aa8ce35dc6d1d30058ad"
    end

    on_intel do
      url "https://github.com/PAIArtCom/Veil/releases/download/v#{version}/veil-v#{version}-linux-amd64.tar.gz"
      sha256 "06947a982ad1c09cb41d143eebafebb919aa36fc6dc16a8c079eb68f111c29f6"
    end
  end

  def install
    bin.install "veil"
  end

  test do
    assert_match "veil", shell_output("#{bin}/veil version")
  end
end
