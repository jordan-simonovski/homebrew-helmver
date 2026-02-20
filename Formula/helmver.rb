class Helmver < Formula
  desc "Helm chart versioning and changelog management"
  homepage "https://github.com/jordan-simonovski/helmver"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jordan-simonovski/helmver/releases/download/v0.4.0/helmver-darwin-arm64"
      sha256 "d96bc6cd02fbc41e6b83eb9dc8e17589c421c9b689e73e779eccf47a8bdd08fd"
    else
      url "https://github.com/jordan-simonovski/helmver/releases/download/v0.4.0/helmver-darwin-amd64"
      sha256 "162caaac99e3686ecc8730a21ef493021cc95d9926391a94cf9b4b967b24fdf2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jordan-simonovski/helmver/releases/download/v0.4.0/helmver-linux-arm64"
      sha256 "88b56d982bf23a3452216cf1eff1efa939eae816cb9ba5143cd5c16a94138e64"
    else
      url "https://github.com/jordan-simonovski/helmver/releases/download/v0.4.0/helmver-linux-amd64"
      sha256 "67a3b1160f2b2427acb0f5ae8311584d709a5b6ba830207be3e83c50bf0ed38d"
    end
  end

  def install
    bin.install Dir["helmver*"].first => "helmver"
  end

  test do
    assert_match "helmver version", shell_output("#{bin}/helmver --version")
  end
end
