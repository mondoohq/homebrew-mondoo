
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "7.19.2"

  if Hardware::CPU.intel?
    sha256 "884b1351ee0496eb49abedd2aa4e4d2ad84fb54705669f75536414a030d3815e"
    url "https://releases.mondoo.com/cnquery/7.19.2/cnquery_7.19.2_darwin_amd64.tar.gz"
  else
    sha256 "852a846016e2e6cbfdff784159123ad3c91349255f98f3f5bf747e8df556d243"
    url "https://releases.mondoo.com/cnquery/7.19.2/cnquery_7.19.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

