
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "8.9.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "74a8ead58a4939fa94528c73b3028fbce0cf66f49486271220b6451216bda99a"
    url "https://releases.mondoo.com/cnspec/8.9.1/cnspec_8.9.1_darwin_amd64.tar.gz"
  else
    sha256 "ea5efff19e120294db0d9285a15bb9aac2eb474a2ae7d72565a53d40fa174ce6"
    url "https://releases.mondoo.com/cnspec/8.9.1/cnspec_8.9.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

