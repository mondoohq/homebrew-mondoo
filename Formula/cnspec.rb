
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "7.1.1"

  if Hardware::CPU.intel?
    sha256 "1cbb3b957e969801f93e78a70fe57a30dfe68b9970eba95c029d413f117d95c8"
    url "https://releases.mondoo.com/cnspec/7.1.1/cnspec_7.1.1_darwin_amd64.tar.gz"
  else
    sha256 "513ee8c7e1f55741fbcdc45ee4fed2f46ff06c778d62fec8c43c46012b93a425"
    url "https://releases.mondoo.com/cnspec/7.1.1/cnspec_7.1.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

