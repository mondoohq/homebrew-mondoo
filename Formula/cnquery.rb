
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "7.0.0"

  if Hardware::CPU.intel?
    sha256 "28ef6f6bdf0b2d1c2c34116d4071a2c2ba7a7217a843baf2ed4bdf9225f37136"
    url "https://releases.mondoo.com/cnquery/7.0.0/cnquery_7.0.0_darwin_amd64.tar.gz"
  else
    sha256 "8c444b1a1a40d2c9838648d9202b94d702e4c47e2f790eff6610c5012ac0dacb"
    url "https://releases.mondoo.com/cnquery/7.0.0/cnquery_7.0.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

