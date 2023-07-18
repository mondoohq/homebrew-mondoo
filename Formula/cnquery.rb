
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "8.19.0"
  

  if Hardware::CPU.intel?
    sha256 "37b303af92ea7594b66f12a324f241364bee74146f097cd00e003b1cbdb98a72"
    url "https://releases.mondoo.com/cnquery/8.19.0/cnquery_8.19.0_darwin_amd64.tar.gz"
  else
    sha256 "7a9fcffe901b593b40928286d6618fd00009173ecdf03d36f3a004d9cb134a05"
    url "https://releases.mondoo.com/cnquery/8.19.0/cnquery_8.19.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

