
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "8.5.2"
  

  if Hardware::CPU.intel?
    sha256 "460445ace6e4f74926cdf0cf2262f9aea7f31f6f90d1588e4c149dd15535b38f"
    url "https://releases.mondoo.com/cnquery/8.5.2/cnquery_8.5.2_darwin_amd64.tar.gz"
  else
    sha256 "74b775715013baccdec50d34052756819bf9d1debfb4c6c407c60dde4dcdf556"
    url "https://releases.mondoo.com/cnquery/8.5.2/cnquery_8.5.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

