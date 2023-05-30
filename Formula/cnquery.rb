
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "8.12.0"
  

  if Hardware::CPU.intel?
    sha256 "8949ed984e98a39b5e61b01cd3b69074c973fa5afe5023a1c061ce8882de4ea2"
    url "https://releases.mondoo.com/cnquery/8.12.0/cnquery_8.12.0_darwin_amd64.tar.gz"
  else
    sha256 "60b1ecfaae0fa79adde85fa7b78999086e34787e4959193a8e1f1789315fb8cc"
    url "https://releases.mondoo.com/cnquery/8.12.0/cnquery_8.12.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

