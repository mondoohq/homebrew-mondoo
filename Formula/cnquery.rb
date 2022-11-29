
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "7.6.0"

  if Hardware::CPU.intel?
    sha256 "a19085c35474ddcbb5bb6bc52e23a52258704c3b7062cba989ea173a459abb51"
    url "https://releases.mondoo.com/cnquery/7.6.0/cnquery_7.6.0_darwin_amd64.tar.gz"
  else
    sha256 "a84f68db0d2e0b759d919a57ff28f8d7bb73a6e148620f80483cf0e0d8b5d0cd"
    url "https://releases.mondoo.com/cnquery/7.6.0/cnquery_7.6.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

