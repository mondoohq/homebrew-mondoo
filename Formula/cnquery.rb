
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "8.8.0"
  

  if Hardware::CPU.intel?
    sha256 "9a6df21456db2e7ac3269c9264dfd67dfb4a13f89200a182c00c56a835529352"
    url "https://releases.mondoo.com/cnquery/8.8.0/cnquery_8.8.0_darwin_amd64.tar.gz"
  else
    sha256 "cd85588485a20ceaed11bdf8068b2c4662d8a67161babe972a86b84ec60036b1"
    url "https://releases.mondoo.com/cnquery/8.8.0/cnquery_8.8.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

