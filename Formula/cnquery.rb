
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "8.19.1"
  

  if Hardware::CPU.intel?
    sha256 "a9e6e626c6cbb7ec18a5391885d2d62a1c8fd53ba291424c42e10a297d41aee5"
    url "https://releases.mondoo.com/cnquery/8.19.1/cnquery_8.19.1_darwin_amd64.tar.gz"
  else
    sha256 "a15dd09b783ec45b38b736689ce479b55a11cdeb6478886631aceeb8eb54faff"
    url "https://releases.mondoo.com/cnquery/8.19.1/cnquery_8.19.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

