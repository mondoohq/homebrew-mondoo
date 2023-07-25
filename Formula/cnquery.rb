
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "8.20.0"
  

  if Hardware::CPU.intel?
    sha256 "1d8077cbc11175e073a777ffaad90a05fbaa13a3954fa94a26c344003df6651e"
    url "https://releases.mondoo.com/cnquery/8.20.0/cnquery_8.20.0_darwin_amd64.tar.gz"
  else
    sha256 "ede3ab5bc3f0c34be97681bee31099ca0ff4eeaea30ac8acec7ebb455bcfac3b"
    url "https://releases.mondoo.com/cnquery/8.20.0/cnquery_8.20.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

