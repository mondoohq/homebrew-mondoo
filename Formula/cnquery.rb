
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "6.19.0-alpha13"

  if Hardware::CPU.intel?
    sha256 "7c0b68882ce23178d068844e6ba7d0b729125a5de479c7dee3f43d164e29748a"
    url "https://releases.mondoo.com/cnquery/6.19.0-alpha13/cnquery_6.19.0-alpha13_darwin_amd64.tar.gz"
  else
    sha256 "85c9f60c346080b7f1e38290054eab51864c6fb733961326e4edafdca33a08fc"
    url "https://releases.mondoo.com/cnquery/6.19.0-alpha13/cnquery_6.19.0-alpha13_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

