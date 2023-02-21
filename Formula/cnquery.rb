
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "7.18.0"

  if Hardware::CPU.intel?
    sha256 "51ae19c32ff905afd69250ffed03af27325bff59bd895ae4d7bdde05fbe59d39"
    url "https://releases.mondoo.com/cnquery/7.18.0/cnquery_7.18.0_darwin_amd64.tar.gz"
  else
    sha256 "c04740ba855c0ddada942b680660caa17a270b6afc6d129aaa8b90f1bb258fce"
    url "https://releases.mondoo.com/cnquery/7.18.0/cnquery_7.18.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

