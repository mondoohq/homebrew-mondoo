
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "8.24.2"
  

  if Hardware::CPU.intel?
    sha256 "fda1aad81245c2e8c2bb7e0ed0f4014cb488b6ed515d471363f67c076c999355"
    url "https://releases.mondoo.com/cnquery/8.24.2/cnquery_8.24.2_darwin_amd64.tar.gz"
  else
    sha256 "964adefc6f9995e342cd5c13b2cd52386f224674b75947975b9288c7b6688ad0"
    url "https://releases.mondoo.com/cnquery/8.24.2/cnquery_8.24.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

