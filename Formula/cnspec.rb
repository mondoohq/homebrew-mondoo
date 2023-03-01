
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "7.19.0"

  if Hardware::CPU.intel?
    sha256 "eb36a92d9028895c10c25db1af30385cf16ec689c2dffa0881b1486e7cbd496d"
    url "https://releases.mondoo.com/cnspec/7.19.0/cnspec_7.19.0_darwin_amd64.tar.gz"
  else
    sha256 "494bb7567f9629c621c4f424d91e22766ef2e69d15c729b3a40cbb8f348498a1"
    url "https://releases.mondoo.com/cnspec/7.19.0/cnspec_7.19.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

