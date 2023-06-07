
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "8.13.0"
  

  if Hardware::CPU.intel?
    sha256 "b25ad90e4766cb92833a87f1689be1e15a973872b98a73986e4e69cc4a83e9b1"
    url "https://releases.mondoo.com/cnquery/8.13.0/cnquery_8.13.0_darwin_amd64.tar.gz"
  else
    sha256 "7dd056e9b05c1a131f4d5d118c8a5a14679367a4e05fa9dbce45846371dd4b00"
    url "https://releases.mondoo.com/cnquery/8.13.0/cnquery_8.13.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

