class Helmver < Formula
  desc "Helm chart versioning and changelog management"
  homepage "https://github.com/jordan-simonovski/helmver"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jordan-simonovski/helmver/releases/download/v0.3.0/helmver-darwin-arm64"
      sha256 "08167575f613cc018302f1bb6df255397f0836e5e5a6f731e7b29eddc92dc787"
    else
      url "https://github.com/jordan-simonovski/helmver/releases/download/v0.3.0/helmver-darwin-amd64"
      sha256 "b4bdb156cbb06f2cd142380e67f82f98eae4e8aa318b9250b9d1430a00a1c9fd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jordan-simonovski/helmver/releases/download/v0.3.0/helmver-linux-arm64"
      sha256 "b903fe551af0581e304e8ca3fc7bcace6d510d41809d57376aff829a61ac8d70"
    else
      url "https://github.com/jordan-simonovski/helmver/releases/download/v0.3.0/helmver-linux-amd64"
      sha256 "3b0c33783babcaca943cb5e874f8a29b12cf2c5704dfd89ecf008041af0412de"
    end
  end

  def install
    bin.install Dir["helmver*"].first => "helmver"
  end

  test do
    assert_match "helmver version", shell_output("#{bin}/helmver --version")
  end
end
