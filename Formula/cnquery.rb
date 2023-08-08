
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "8.22.1"
  

  if Hardware::CPU.intel?
    sha256 "86fbb5e6e6ce0022d16751e0415c229340351c7a1d356f70bfd46a68e5b8c9d7"
    url "https://releases.mondoo.com/cnquery/8.22.1/cnquery_8.22.1_darwin_amd64.tar.gz"
  else
    sha256 "01daa9074c81e77fb2e37a1450bf4a1d692462c76e5a10f8c343cc55d6a6d962"
    url "https://releases.mondoo.com/cnquery/8.22.1/cnquery_8.22.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

