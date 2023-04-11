
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "8.5.0"
  

  if Hardware::CPU.intel?
    sha256 "06d9416dc110d4f2b5b3e29e6a944a84f0804fcded8aaccae7d2acb0a88507d4"
    url "https://releases.mondoo.com/cnquery/8.5.0/cnquery_8.5.0_darwin_amd64.tar.gz"
  else
    sha256 "acfd98257d0f0fd92e1406e51fc92df9e8efe9c4a99349d654f207897020b472"
    url "https://releases.mondoo.com/cnquery/8.5.0/cnquery_8.5.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

