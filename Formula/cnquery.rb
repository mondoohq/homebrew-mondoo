
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "7.13.0"

  if Hardware::CPU.intel?
    sha256 "e0ef05e5a1d01db5c0b8df965fe94c8087ba11de8c9813acdf2a83e8b0404f03"
    url "https://releases.mondoo.com/cnquery/7.13.0/cnquery_7.13.0_darwin_amd64.tar.gz"
  else
    sha256 "bb8d6441ef0914bdba0029aa35c9656c59294b45d24177b93f64d49652dcbc9a"
    url "https://releases.mondoo.com/cnquery/7.13.0/cnquery_7.13.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

