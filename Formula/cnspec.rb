
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "7.6.1"

  if Hardware::CPU.intel?
    sha256 "820806ec2b210e66dc08cad662f93ec97d885568f81d7969ebbfe83c408cc9ae"
    url "https://releases.mondoo.com/cnspec/7.6.1/cnspec_7.6.1_darwin_amd64.tar.gz"
  else
    sha256 "7a4ffb07673e89dac57e4d4c9c89f13307592764d06cd4101de17447670aac75"
    url "https://releases.mondoo.com/cnspec/7.6.1/cnspec_7.6.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

