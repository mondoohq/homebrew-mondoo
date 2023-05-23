
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "8.11.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "73f3c5c8ff928a2f22b7fd8f502a51f80b13319ecabacf988818b74f2a69087f"
    url "https://releases.mondoo.com/cnspec/8.11.0/cnspec_8.11.0_darwin_amd64.tar.gz"
  else
    sha256 "da0700c934c8c956bb4fcf315ea3e266eff9d71f27dd8a6e8ff6d016f5629c6e"
    url "https://releases.mondoo.com/cnspec/8.11.0/cnspec_8.11.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

