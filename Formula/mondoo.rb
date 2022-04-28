
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "5.36.3"

  if Hardware::CPU.intel?
    sha256 "e4e2ff78fb9a1a227c24ef425dc8ffdb88805380978d5063e6b645e4ddcd7ea0"
    url "https://releases.mondoo.com/mondoo/5.36.3/mondoo_5.36.3_darwin_amd64.tar.gz"
  else
    sha256 "32ba0c7b5591fe55293bcf7624472730b867205dcdeefac5037635a1340a4b95"
    url "https://releases.mondoo.com/mondoo/5.36.3/mondoo_5.36.3_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

