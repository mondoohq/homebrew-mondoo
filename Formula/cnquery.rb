
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "8.18.0"
  

  if Hardware::CPU.intel?
    sha256 "ac61915508809f7dc3627c3673f65e51102fbf9d2b57efaeaa5664b256ff6bb0"
    url "https://releases.mondoo.com/cnquery/8.18.0/cnquery_8.18.0_darwin_amd64.tar.gz"
  else
    sha256 "a06ede55433a69b83181304c9ed2e59d0907b40b17363daaf1fcfd5227a85509"
    url "https://releases.mondoo.com/cnquery/8.18.0/cnquery_8.18.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

