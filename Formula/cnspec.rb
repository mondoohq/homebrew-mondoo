
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "7.4.0"

  if Hardware::CPU.intel?
    sha256 "4657b28df1a4cb41304a1e46997138c5876f051830717131cdaa470b83cc666c"
    url "https://releases.mondoo.com/cnspec/7.4.0/cnspec_7.4.0_darwin_amd64.tar.gz"
  else
    sha256 "49ae0022c27e4fee045bb7b1d40421f017792587357e4b33fd6e6295bca3c0bf"
    url "https://releases.mondoo.com/cnspec/7.4.0/cnspec_7.4.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

