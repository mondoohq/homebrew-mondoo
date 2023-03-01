
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "7.19.1"

  if Hardware::CPU.intel?
    sha256 "752cc932138b432eed56e214e46bc43f83485ad8bc8824af2d607f6a7cb99bda"
    url "https://releases.mondoo.com/cnquery/7.19.1/cnquery_7.19.1_darwin_amd64.tar.gz"
  else
    sha256 "94886d6f50d7190105360e532983e9817a8c5df694a482a8436e742e69f7b8fa"
    url "https://releases.mondoo.com/cnquery/7.19.1/cnquery_7.19.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

