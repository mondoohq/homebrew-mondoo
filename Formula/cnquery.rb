
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "7.10.0"

  if Hardware::CPU.intel?
    sha256 "13305568988f88f25bddcc574bf1d84134a130330e9b9a30b11d376477c83a09"
    url "https://releases.mondoo.com/cnquery/7.10.0/cnquery_7.10.0_darwin_amd64.tar.gz"
  else
    sha256 "ce39bbfbf5f5adc4ec17f57a37d6c980c7270d2e1d1386f77ed5b4a85f5b8f60"
    url "https://releases.mondoo.com/cnquery/7.10.0/cnquery_7.10.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

