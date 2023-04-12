
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "8.5.1"
  

  if Hardware::CPU.intel?
    sha256 "7e99f889cb7b4e247893de5422bbe93d8b3ea6907106507d49af1867d179e6ac"
    url "https://releases.mondoo.com/cnquery/8.5.1/cnquery_8.5.1_darwin_amd64.tar.gz"
  else
    sha256 "fec256b0bc506b8791f50e74beabe3ceafb1615b1fc24bc3dc5cb35152e890b2"
    url "https://releases.mondoo.com/cnquery/8.5.1/cnquery_8.5.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

