
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "8.23.0"
  

  if Hardware::CPU.intel?
    sha256 "6e27bc58637ab5315df78bd20a824b3de202b1fe64f9e75c988cc4439e372584"
    url "https://releases.mondoo.com/cnquery/8.23.0/cnquery_8.23.0_darwin_amd64.tar.gz"
  else
    sha256 "8b90acee84c13e0d5e35efcd2a8194bdfca9194722141b5a21155182f4f61f19"
    url "https://releases.mondoo.com/cnquery/8.23.0/cnquery_8.23.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

