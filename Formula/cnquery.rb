
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "7.18.2"

  if Hardware::CPU.intel?
    sha256 "b16a2989a7e950ffbb659602f5e6ab0e08b9aa1916b80a6c4c13303eb9fc08b5"
    url "https://releases.mondoo.com/cnquery/7.18.2/cnquery_7.18.2_darwin_amd64.tar.gz"
  else
    sha256 "0cd81483a08a7421648e5b9b5c6d54ddc51601efb159c908f0f19678e998f1a4"
    url "https://releases.mondoo.com/cnquery/7.18.2/cnquery_7.18.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

