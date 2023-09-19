
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "8.28.2"
  

  if Hardware::CPU.intel?
    sha256 "12423f2d80c93f26ab38a901b12f8a6b86652c0e4498e9a2f28a8c79356cf8d5"
    url "https://releases.mondoo.com/cnquery/8.28.2/cnquery_8.28.2_darwin_amd64.tar.gz"
  else
    sha256 "41167da653bbb699daa989a1c0d9bb94972fcaa8ac23dba878b32fbd9d6fb395"
    url "https://releases.mondoo.com/cnquery/8.28.2/cnquery_8.28.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

