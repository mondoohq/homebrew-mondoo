
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "8.1.1"

  if Hardware::CPU.intel?
    sha256 "9030f9100caa455cbd154ba768acc76a02e987533dfc0a6b4ce3dd5eaf203b53"
    url "https://releases.mondoo.com/cnquery/8.1.1/cnquery_8.1.1_darwin_amd64.tar.gz"
  else
    sha256 "cd849cab21a0f9ae84b630ec00418281bec32481b48a461fed4d1b732bc56de6"
    url "https://releases.mondoo.com/cnquery/8.1.1/cnquery_8.1.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

