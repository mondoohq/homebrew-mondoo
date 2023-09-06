
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "8.26.0"
  

  if Hardware::CPU.intel?
    sha256 "d530f5ebd01cd6911e8c93928cf8d20e4368602407df9178990b756a25d92684"
    url "https://releases.mondoo.com/cnquery/8.26.0/cnquery_8.26.0_darwin_amd64.tar.gz"
  else
    sha256 "d1000f62f63c0d70c5794793a5e2639c776fb90e6cd520a69a181dbd9c41560d"
    url "https://releases.mondoo.com/cnquery/8.26.0/cnquery_8.26.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

