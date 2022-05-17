
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "5.38.6"

  if Hardware::CPU.intel?
    sha256 "e35c9058f2c648fccac0948db9458337c1849932d3d180ff61bb9306b8067d3b"
    url "https://releases.mondoo.com/mondoo/5.38.6/mondoo_5.38.6_darwin_amd64.tar.gz"
  else
    sha256 "8c4c7b22d3acba6831c0774664b9288a60d9eb3b7411289979d78915b2fbc6f9"
    url "https://releases.mondoo.com/mondoo/5.38.6/mondoo_5.38.6_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

