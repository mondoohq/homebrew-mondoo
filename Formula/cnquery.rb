
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "7.0.1"

  if Hardware::CPU.intel?
    sha256 "4ddeba3b8a7c4dd6a5bd32ac2300bdcdc522526ba85f14dc8a0970ffb9a7384b"
    url "https://releases.mondoo.com/cnquery/7.0.1/cnquery_7.0.1_darwin_amd64.tar.gz"
  else
    sha256 "ce2000a4b88405ea16b8947cc9537a228324ac0c8fcd12af1d53d00947094c74"
    url "https://releases.mondoo.com/cnquery/7.0.1/cnquery_7.0.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

