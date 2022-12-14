
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "7.8.0"

  if Hardware::CPU.intel?
    sha256 "1bc7dc795ded95e3c7107bb7aca9d9e323875540efa27bb648edd33ad800ec43"
    url "https://releases.mondoo.com/cnquery/7.8.0/cnquery_7.8.0_darwin_amd64.tar.gz"
  else
    sha256 "d3ffc3090ad9def2c2f403b72bad9ec7d03c2607a80214e637f821d2b7e7e6e5"
    url "https://releases.mondoo.com/cnquery/7.8.0/cnquery_7.8.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

