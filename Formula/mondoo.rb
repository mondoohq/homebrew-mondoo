
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "6.17.2"

  if Hardware::CPU.intel?
    sha256 "3bcf09d71574c0707dd3d7aea7632e5594649f2238e36930833c32753204e950"
    url "https://releases.mondoo.com/mondoo/6.17.2/mondoo_6.17.2_darwin_amd64.tar.gz"
  else
    sha256 "58166b482c41b6db366133f4088ff0e1227ce68432941f87a4431186876c4e71"
    url "https://releases.mondoo.com/mondoo/6.17.2/mondoo_6.17.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

