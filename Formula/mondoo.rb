
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "6.14.0"

  if Hardware::CPU.intel?
    sha256 "b5878a05f97070aa6ab1db6e5bbab712f1e8eab641d4cc55a4a01ec704c8a214"
    url "https://releases.mondoo.com/mondoo/6.14.0/mondoo_6.14.0_darwin_amd64.tar.gz"
  else
    sha256 "29ebebe7ae0ee57edeeb2867e4e80e3299d0257e2cdb9babd755d766e0ab4054"
    url "https://releases.mondoo.com/mondoo/6.14.0/mondoo_6.14.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

