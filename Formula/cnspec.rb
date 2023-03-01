
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "7.19.1"

  if Hardware::CPU.intel?
    sha256 "8a8497a6ae5eefdeae60caf9b9eba5acd4065b0267151063b6edfa3fae65032b"
    url "https://releases.mondoo.com/cnspec/7.19.1/cnspec_7.19.1_darwin_amd64.tar.gz"
  else
    sha256 "100822feff3710d44c1d69787924e1e72ce1be63bad3f4aa0c76d89397420dba"
    url "https://releases.mondoo.com/cnspec/7.19.1/cnspec_7.19.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

