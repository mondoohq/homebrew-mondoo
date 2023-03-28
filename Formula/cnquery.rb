
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "8.3.0"
  

  if Hardware::CPU.intel?
    sha256 "31ed5f591850dce91ef95bb7955ed4d69faeb6ae51fe1cdce1866c2b0bdd117c"
    url "https://releases.mondoo.com/cnquery/8.3.0/cnquery_8.3.0_darwin_amd64.tar.gz"
  else
    sha256 "8892bd4d990dd7311759b6a388015b4ae509e9bc118d18c55fcce36295237d93"
    url "https://releases.mondoo.com/cnquery/8.3.0/cnquery_8.3.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

