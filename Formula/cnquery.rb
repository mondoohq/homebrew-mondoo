
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "8.11.0"
  

  if Hardware::CPU.intel?
    sha256 "95f93bfe80524a07fa372a792b3b5009aa953024b18e2628cb397b31d9a64109"
    url "https://releases.mondoo.com/cnquery/8.11.0/cnquery_8.11.0_darwin_amd64.tar.gz"
  else
    sha256 "4d283968b76855c7278462042b2158889ca7b7936577d626515fc78db25a6f2c"
    url "https://releases.mondoo.com/cnquery/8.11.0/cnquery_8.11.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

