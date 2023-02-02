
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "7.15.1"

  if Hardware::CPU.intel?
    sha256 "61900dd83ad13373bf53070ab993dd7e44d377e22b1f8b87563c5fc3ad43d746"
    url "https://releases.mondoo.com/cnquery/7.15.1/cnquery_7.15.1_darwin_amd64.tar.gz"
  else
    sha256 "f19a485213be96dad2ed608951fd6e6214b4a3da19b7f1ad04a38a177969aeec"
    url "https://releases.mondoo.com/cnquery/7.15.1/cnquery_7.15.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

