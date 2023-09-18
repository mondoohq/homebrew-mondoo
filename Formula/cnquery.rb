
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "9.0.0-beta1"
  

  if Hardware::CPU.intel?
    sha256 ""
    url "https://releases.mondoo.com/cnquery/9.0.0-beta1/cnquery_9.0.0-beta1_darwin_amd64.tar.gz"
  else
    sha256 ""
    url "https://releases.mondoo.com/cnquery/9.0.0-beta1/cnquery_9.0.0-beta1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

