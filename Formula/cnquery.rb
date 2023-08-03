
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "8.21.3"
  

  if Hardware::CPU.intel?
    sha256 "b474f9080891b3fef20e925f1b44c6320a1fe9235456bfc67b23c9a81c9575af"
    url "https://releases.mondoo.com/cnquery/8.21.3/cnquery_8.21.3_darwin_amd64.tar.gz"
  else
    sha256 "a2787494563f978c8823bea43a7b8bf74c85a0cd3e3993752c12eb1ad61f16ad"
    url "https://releases.mondoo.com/cnquery/8.21.3/cnquery_8.21.3_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

