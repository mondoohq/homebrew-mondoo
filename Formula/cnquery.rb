
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "7.14.1"

  if Hardware::CPU.intel?
    sha256 "e96aafb8784b8e888f281bebed2845b26cede4d0625c36ffb7416c6ebdddf039"
    url "https://releases.mondoo.com/cnquery/7.14.1/cnquery_7.14.1_darwin_amd64.tar.gz"
  else
    sha256 "a5f073cd457165b1f27bcc29b2aa3d4a2150b0031a9907663e866688b20304f2"
    url "https://releases.mondoo.com/cnquery/7.14.1/cnquery_7.14.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

