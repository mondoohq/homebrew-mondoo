
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "6.0.0"

  if Hardware::CPU.intel?
    sha256 "9feeffde18a652b7855b4ac6d4e1a24614ef2aea9fcad921e661ac83c7da78cb"
    url "https://releases.mondoo.com/mondoo/6.0.0/mondoo_6.0.0_darwin_amd64.tar.gz"
  else
    sha256 "2b012d866142f8a016587a637306195d5831bdf9e2cbc2a6966688cc6fabd7d3"
    url "https://releases.mondoo.com/mondoo/6.0.0/mondoo_6.0.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

