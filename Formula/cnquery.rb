
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "8.21.1"
  

  if Hardware::CPU.intel?
    sha256 "6c41fe59c5e075b6a932f65f2697ee2c43d6e1c35fe086038cc7d2871bf735cd"
    url "https://releases.mondoo.com/cnquery/8.21.1/cnquery_8.21.1_darwin_amd64.tar.gz"
  else
    sha256 "d00080a11beba3b4423d95edc643de275b34a4e4e91aa88469f90b46461cf84d"
    url "https://releases.mondoo.com/cnquery/8.21.1/cnquery_8.21.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

