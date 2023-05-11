
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "8.9.1"
  

  if Hardware::CPU.intel?
    sha256 "0e293e0880f6210aeb15834fdc557204b38ee539575cf29156e513cf84c68126"
    url "https://releases.mondoo.com/cnquery/8.9.1/cnquery_8.9.1_darwin_amd64.tar.gz"
  else
    sha256 "8acb67ab980f1f0b342385cfed7468580902c05cdc1b253ea674257ca8faba9d"
    url "https://releases.mondoo.com/cnquery/8.9.1/cnquery_8.9.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

