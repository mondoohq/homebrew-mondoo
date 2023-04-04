
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "8.4.0"
  

  if Hardware::CPU.intel?
    sha256 "4556815b571ee442050b7d5a4de58aef1a927b2854c9a42cce80eff153b5210c"
    url "https://releases.mondoo.com/cnquery/8.4.0/cnquery_8.4.0_darwin_amd64.tar.gz"
  else
    sha256 "0af188ca55eee33114581d00f18899b1f4d4225b67171282333587679451fae5"
    url "https://releases.mondoo.com/cnquery/8.4.0/cnquery_8.4.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

