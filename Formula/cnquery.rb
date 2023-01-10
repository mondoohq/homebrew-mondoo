
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "7.12.0"

  if Hardware::CPU.intel?
    sha256 "98c4227c3d51ac448d49fcd7b4da8f5de395e98938e8a53ab6282cba35c09c7a"
    url "https://releases.mondoo.com/cnquery/7.12.0/cnquery_7.12.0_darwin_amd64.tar.gz"
  else
    sha256 "53efb6a101e5242ad8c570740d07eb694aa88ce4c541e34b372e4c856678648d"
    url "https://releases.mondoo.com/cnquery/7.12.0/cnquery_7.12.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

