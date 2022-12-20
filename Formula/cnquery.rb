
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "7.9.0"

  if Hardware::CPU.intel?
    sha256 "010202b44911024fe31272ee034889472363d386c5c3812cb2eba2f0cfac1418"
    url "https://releases.mondoo.com/cnquery/7.9.0/cnquery_7.9.0_darwin_amd64.tar.gz"
  else
    sha256 "dfbe0975e0cfac26cc82dc67b62e5e4631d6106d78df86663ef716caa6ceb4a4"
    url "https://releases.mondoo.com/cnquery/7.9.0/cnquery_7.9.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

