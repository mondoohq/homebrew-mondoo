
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "8.1.0"

  if Hardware::CPU.intel?
    sha256 "a47b0b879c08603403cd1481f8df53186c357510e4d56dcd264c938599f1daca"
    url "https://releases.mondoo.com/cnquery/8.1.0/cnquery_8.1.0_darwin_amd64.tar.gz"
  else
    sha256 "32e234d25ca3893a16ed46af96f744d608851d65db109b1a17859d224a21991d"
    url "https://releases.mondoo.com/cnquery/8.1.0/cnquery_8.1.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

