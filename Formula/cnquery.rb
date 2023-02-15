
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "7.17.1"

  if Hardware::CPU.intel?
    sha256 "efc9bb22c6e6f1ec64cd73ae59fbaf103891d8eb75b9c6e2e0c78de37511d114"
    url "https://releases.mondoo.com/cnquery/7.17.1/cnquery_7.17.1_darwin_amd64.tar.gz"
  else
    sha256 "14b64c0f2124fea3ffe44deb61ed4c1800069d897306c609a19223d0130eb0aa"
    url "https://releases.mondoo.com/cnquery/7.17.1/cnquery_7.17.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

