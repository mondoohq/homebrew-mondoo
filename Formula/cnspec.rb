
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "7.12.0"

  if Hardware::CPU.intel?
    sha256 "2fec090469a4770accce272285b82f658b7c64d71e39ef037d1ffb13ff677906"
    url "https://releases.mondoo.com/cnspec/7.12.0/cnspec_7.12.0_darwin_amd64.tar.gz"
  else
    sha256 "3518e1602badf30c14d79dc7eeab01f29e4f1df96f9aa3120d4140ea7de2253e"
    url "https://releases.mondoo.com/cnspec/7.12.0/cnspec_7.12.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

