
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "6.13.0"

  if Hardware::CPU.intel?
    sha256 "8df8b5303a977494dfca34848de195f86618c2ce2b3f1dd597f95b1bc26c5270"
    url "https://releases.mondoo.com/mondoo/6.13.0/mondoo_6.13.0_darwin_amd64.tar.gz"
  else
    sha256 "db117619f915363f58cd756582dc3485495cea255862ba5f27e20523fdb71929"
    url "https://releases.mondoo.com/mondoo/6.13.0/mondoo_6.13.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

