
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "8.9.0"
  

  if Hardware::CPU.intel?
    sha256 "d0852cd1343e9aeeda8f34e0cece6b7b441bbe6205000b34739c59a5e4d58c00"
    url "https://releases.mondoo.com/cnquery/8.9.0/cnquery_8.9.0_darwin_amd64.tar.gz"
  else
    sha256 "2f8e9183f897d8dc71970890da67dca5c3af3fd6d29728adaf4c4757a6e338c4"
    url "https://releases.mondoo.com/cnquery/8.9.0/cnquery_8.9.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

