
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "7.7.1"

  if Hardware::CPU.intel?
    sha256 "049c9a460a820fc505d24f1fd5f9f42abb9dee080b55233253f8e7bde87e2740"
    url "https://releases.mondoo.com/cnquery/7.7.1/cnquery_7.7.1_darwin_amd64.tar.gz"
  else
    sha256 "bfe05920464ed87543dafa10080995ba99272b80477f60e3605af0757648411d"
    url "https://releases.mondoo.com/cnquery/7.7.1/cnquery_7.7.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

