
class Mondoo < Formula
  desc "Mondoo"
  homepage "https://mondoo.io"
  version "5.6.0"

  if Hardware::CPU.intel?
    sha256 "6b0357b0faeac900b32326f10c2a389df9783e4a917d90d6d43f99881c442ddc"
    url "https://releases.mondoo.io/mondoo/5.6.0/mondoo_5.6.0_darwin_amd64.tar.gz"
  else
    sha256 "2a83a9c2ce9f917e466dc000769e0d68f9c0e062d4d159638dd9c08d071be053"
    url "https://releases.mondoo.io/mondoo/5.6.0/mondoo_5.6.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

