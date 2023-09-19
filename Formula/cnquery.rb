
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "8.28.1"
  

  if Hardware::CPU.intel?
    sha256 "74a08508c5e5bd38df226862e312e518d84bf51dc9077b50369c0f216bb918ed"
    url "https://releases.mondoo.com/cnquery/8.28.1/cnquery_8.28.1_darwin_amd64.tar.gz"
  else
    sha256 "64cb6247f20fb61b57de31b6e17cd63e2e63df9323497c152c6807c5118a0cae"
    url "https://releases.mondoo.com/cnquery/8.28.1/cnquery_8.28.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

