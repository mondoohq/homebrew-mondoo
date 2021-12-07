
class Mondoo < Formula
  desc "Mondoo"
  homepage "https://mondoo.io"
  version "5.17.0"

  if Hardware::CPU.intel?
    sha256 "3984c4edb0346ac88884753623ba9530d52f3701166e3747cb44f1ddabb04b57"
    url "https://releases.mondoo.io/mondoo/5.17.0/mondoo_5.17.0_darwin_amd64.tar.gz"
  else
    sha256 "74f5470c41f4c36cef07bd2d0bc7024a4f6b3fc83835db09b4285c98612006b3"
    url "https://releases.mondoo.io/mondoo/5.17.0/mondoo_5.17.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

