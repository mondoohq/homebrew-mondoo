
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "7.17.0"

  if Hardware::CPU.intel?
    sha256 "bc66e62e939683b2c835bf1545ba300b027b6e4a9a912c8c62a87477b91e9f45"
    url "https://releases.mondoo.com/cnquery/7.17.0/cnquery_7.17.0_darwin_amd64.tar.gz"
  else
    sha256 "f596caf314c35a78a9d4e67d1a31715acfb22e1085474fe839c414b477659bc9"
    url "https://releases.mondoo.com/cnquery/7.17.0/cnquery_7.17.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

