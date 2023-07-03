
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "8.17.0"
  

  if Hardware::CPU.intel?
    sha256 "0d35a825a1e59a7db5db3a7f04290825afa49361774e17322c58b17aaa10e6fc"
    url "https://releases.mondoo.com/cnquery/8.17.0/cnquery_8.17.0_darwin_amd64.tar.gz"
  else
    sha256 "56d4b973570b38579de92d21754e67be8f634c6224afc9e33f820c55ce1f0e36"
    url "https://releases.mondoo.com/cnquery/8.17.0/cnquery_8.17.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

