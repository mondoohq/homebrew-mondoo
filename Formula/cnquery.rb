
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "8.4.2"
  

  if Hardware::CPU.intel?
    sha256 "b90cd03e40b5132c9fd442a6844c552a9e713ff2c524d3c04da2ad5a91191160"
    url "https://releases.mondoo.com/cnquery/8.4.2/cnquery_8.4.2_darwin_amd64.tar.gz"
  else
    sha256 "778f74d40c4c693dbb4945923ef4b032afe83d69f49f302b255873994b2e5e14"
    url "https://releases.mondoo.com/cnquery/8.4.2/cnquery_8.4.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

