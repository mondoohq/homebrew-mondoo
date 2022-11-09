
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "7.3.0"

  if Hardware::CPU.intel?
    sha256 "edabde49c36a00d588aae8c8cb5a4ef65aaa635259cee63981e9b6ced8624d29"
    url "https://releases.mondoo.com/cnquery/7.3.0/cnquery_7.3.0_darwin_amd64.tar.gz"
  else
    sha256 "ae701890f4d0d8c6d54922d2d2adf4aca8d4e3dd575aefab219f2aff24d04da0"
    url "https://releases.mondoo.com/cnquery/7.3.0/cnquery_7.3.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

