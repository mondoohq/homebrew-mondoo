
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "8.22.0"
  

  if Hardware::CPU.intel?
    sha256 "1e101f9206bc07088bb08d43ba403e4695a406a66a6c24d80c4fc05930014889"
    url "https://releases.mondoo.com/cnquery/8.22.0/cnquery_8.22.0_darwin_amd64.tar.gz"
  else
    sha256 "0173db4652d6f0d3bae0f56237b06897d02bd9ffb76a25297e6d7adb4271406a"
    url "https://releases.mondoo.com/cnquery/8.22.0/cnquery_8.22.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

