
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "7.1.0"

  if Hardware::CPU.intel?
    sha256 "f71815b398e1b3eee9476c0907e4d6f22942753bf45cf0fba9d96dfe8aa65f9c"
    url "https://releases.mondoo.com/cnquery/7.1.0/cnquery_7.1.0_darwin_amd64.tar.gz"
  else
    sha256 "4cf402dad70582a0b4ead945f2eb76c69aee366213d236191f0bb15749ecbc81"
    url "https://releases.mondoo.com/cnquery/7.1.0/cnquery_7.1.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

