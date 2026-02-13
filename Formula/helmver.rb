class Helmver < Formula
  desc "Helm chart versioning and changelog management"
  homepage "https://github.com/jordan-simonovski/helmver"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jordan-simonovski/helmver/releases/download/v0.2.0/helmver-darwin-arm64"
      sha256 "f5bdbd8bb01cc941f655cca9c076816f23c1f477f2bdf4b2282a3b508c74d4ef"
    else
      url "https://github.com/jordan-simonovski/helmver/releases/download/v0.2.0/helmver-darwin-amd64"
      sha256 "d4fc6a2596f52af6404fd9dcbc6928bd272f9bff112f706bd4bb33f1ca53b06d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jordan-simonovski/helmver/releases/download/v0.2.0/helmver-linux-arm64"
      sha256 "e7f43ab89a95a02df1f3d5bc35e93699002d75660f850d0a27163cf31b72e578"
    else
      url "https://github.com/jordan-simonovski/helmver/releases/download/v0.2.0/helmver-linux-amd64"
      sha256 "a413f940e7968839839ff7714c0527c64970865b02c9762e57e761d924235f7f"
    end
  end

  def install
    bin.install Dir["helmver*"].first => "helmver"
  end

  test do
    assert_match "helmver version", shell_output("#{bin}/helmver --version")
  end
end
