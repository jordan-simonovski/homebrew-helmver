class Helmver < Formula
  desc "Helm chart versioning and changelog management"
  homepage "https://github.com/jordan-simonovski/helmver"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jordan-simonovski/helmver/releases/download/v0.5.0/helmver-darwin-arm64"
      sha256 "133b7e367e23f248a17c58f46d91e13d268f778de96b4674083c6b461fda6a11"
    else
      url "https://github.com/jordan-simonovski/helmver/releases/download/v0.5.0/helmver-darwin-amd64"
      sha256 "1078eb7e9feee4466b847e40f5f01af0103e6ece7dd0050ac48ecf28402d2131"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jordan-simonovski/helmver/releases/download/v0.5.0/helmver-linux-arm64"
      sha256 "e5ad574dce611386d7eb1c1eaaee7db8469acdbf515380904372a951c83430c8"
    else
      url "https://github.com/jordan-simonovski/helmver/releases/download/v0.5.0/helmver-linux-amd64"
      sha256 "8806ca486fe6896a00382f3831ad5b90d4828ed0f3a8b55559a2b33fe9bbd9d1"
    end
  end

  def install
    bin.install Dir["helmver*"].first => "helmver"
  end

  test do
    assert_match "helmver version", shell_output("#{bin}/helmver --version")
  end
end
