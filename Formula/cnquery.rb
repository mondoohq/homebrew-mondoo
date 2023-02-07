
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "7.16.1"

  if Hardware::CPU.intel?
    sha256 "5b7845be907a8c970d331d1a02bab893e9659e27a20889a31d5859847020109c"
    url "https://releases.mondoo.com/cnquery/7.16.1/cnquery_7.16.1_darwin_amd64.tar.gz"
  else
    sha256 "8f306935a9dd82d9f8f9348cca195f321c8fcc921c1f3bd0ef817db2db240010"
    url "https://releases.mondoo.com/cnquery/7.16.1/cnquery_7.16.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

