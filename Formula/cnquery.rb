
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "7.17.2"

  if Hardware::CPU.intel?
    sha256 "6d83f88a29a379c1842019996beae46a21ca3d4ee1cdafdb10b67c5eff325536"
    url "https://releases.mondoo.com/cnquery/7.17.2/cnquery_7.17.2_darwin_amd64.tar.gz"
  else
    sha256 "9633ab4140d6b5b484a414619c1d22911b271470be83530fd7d7922bc17b0372"
    url "https://releases.mondoo.com/cnquery/7.17.2/cnquery_7.17.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

