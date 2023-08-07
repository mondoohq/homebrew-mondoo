
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "8.22.0"
  

  if Hardware::CPU.intel?
    sha256 "a3aa5c8f159cdd916cbb9561ff2157357d285d3318ba0aaf86009d2e949a4c5a"
    url "https://releases.mondoo.com/cnquery/8.22.0/cnquery_8.22.0_darwin_amd64.tar.gz"
  else
    sha256 "faf5f15e1a200b2e8fb70fc951e599f61babf2e6df7d6cc7fda19463833fbfd6"
    url "https://releases.mondoo.com/cnquery/8.22.0/cnquery_8.22.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

