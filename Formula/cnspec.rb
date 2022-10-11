
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "6.19.0"

  if Hardware::CPU.intel?
    sha256 "d6c9cb4d7be990291bbee91906b715c1ea723456d5235c0b663399d0eaac9274"
    url "https://releases.mondoo.com/cnspec/6.19.0/cnspec_6.19.0_darwin_amd64.tar.gz"
  else
    sha256 "263d812bbbc5f13b1af635713982e0f5ac3018325bcdec5c3d2d90a2ba303c3e"
    url "https://releases.mondoo.com/cnspec/6.19.0/cnspec_6.19.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

