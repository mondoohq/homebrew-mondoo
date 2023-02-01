
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "7.15.0"

  if Hardware::CPU.intel?
    sha256 "37d099a6288db6cd0d6abd60f59246d959312a1c2c49f0c7c4811639b121fc52"
    url "https://releases.mondoo.com/cnspec/7.15.0/cnspec_7.15.0_darwin_amd64.tar.gz"
  else
    sha256 "66c69180811f7c6a79449d651feea5d3f01a9b4a9617b40f1bf42d4ecfcc3d92"
    url "https://releases.mondoo.com/cnspec/7.15.0/cnspec_7.15.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

