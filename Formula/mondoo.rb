
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "7.13.0"

  if Hardware::CPU.intel?
    sha256 "6c9c9b056ab10f656bbf257f8be4b67a0f6855d286e3e93d1db3de6b4b0b5cac"
    url "https://releases.mondoo.com/mondoo/7.13.0/mondoo_7.13.0_darwin_amd64.tar.gz"
  else
    sha256 "e3ea4840896a54741861d8d5c20f15f1997cae75381be8b4bcd3b056dda27721"
    url "https://releases.mondoo.com/mondoo/7.13.0/mondoo_7.13.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

