
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "8.2.0"
  

  if Hardware::CPU.intel?
    sha256 "884be7534cfc69048c1858ad80d604d1f60a0f092656eb33dc1f7949cdf151a1"
    url "https://releases.mondoo.com/cnquery/8.2.0/cnquery_8.2.0_darwin_amd64.tar.gz"
  else
    sha256 "a17f99748b21633bf576d45e8eeee48992e3bd2959d4b4c22b30a4b5b6b1233e"
    url "https://releases.mondoo.com/cnquery/8.2.0/cnquery_8.2.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

