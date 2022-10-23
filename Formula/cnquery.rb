
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "7.0.3"

  if Hardware::CPU.intel?
    sha256 "08013a66157ecef1f24add9f210d66d21efdd35224905048c7aa2a0023b35d17"
    url "https://releases.mondoo.com/cnquery/7.0.3/cnquery_7.0.3_darwin_amd64.tar.gz"
  else
    sha256 "5fcdafaa55dc3c33a18f71efca8fd91dd7793f36ba1e17a8008c3bebc3e5d1d7"
    url "https://releases.mondoo.com/cnquery/7.0.3/cnquery_7.0.3_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

