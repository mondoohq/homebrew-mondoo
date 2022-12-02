
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "7.6.1"

  if Hardware::CPU.intel?
    sha256 "03913576769962913827bc8f7dff9cab4c23241a45b8e2d83d0efb3577e168a9"
    url "https://releases.mondoo.com/cnquery/7.6.1/cnquery_7.6.1_darwin_amd64.tar.gz"
  else
    sha256 "47531963434af3b361df3cb79cccd264d3c1e0bf138f078c80f4b7ac8e299249"
    url "https://releases.mondoo.com/cnquery/7.6.1/cnquery_7.6.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

