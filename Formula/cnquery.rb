
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "8.14.0"
  

  if Hardware::CPU.intel?
    sha256 "60e65f3c55e6e34fc390c8d04f7c0aaede7440efe23a5aa3b67aa22b0e372b17"
    url "https://releases.mondoo.com/cnquery/8.14.0/cnquery_8.14.0_darwin_amd64.tar.gz"
  else
    sha256 "43c20bd586534c25be349445b26851fddc2d816862ae172a7d480371a2a5e073"
    url "https://releases.mondoo.com/cnquery/8.14.0/cnquery_8.14.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

