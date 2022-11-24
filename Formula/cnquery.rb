
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "7.5.1"

  if Hardware::CPU.intel?
    sha256 "10af06acf230b05f6313477ae267e3e48fd5c4ea58ab07ea1fbb74571bad4d3b"
    url "https://releases.mondoo.com/cnquery/7.5.1/cnquery_7.5.1_darwin_amd64.tar.gz"
  else
    sha256 "ff993058030704d1d6328c929b0475e53193e529e01440c0e9cbb5f2aefe0e36"
    url "https://releases.mondoo.com/cnquery/7.5.1/cnquery_7.5.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

