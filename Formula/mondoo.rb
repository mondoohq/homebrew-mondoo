
class Mondoo < Formula
  desc "Mondoo"
  homepage "https://mondoo.io"
  version "5.21.1"

  if Hardware::CPU.intel?
    sha256 "e425f14390c099ce0895a1f2d8279d8f4677d521c97f353bc120f9a506aeef7f"
    url "https://releases.mondoo.io/mondoo/5.21.0/mondoo_5.21.1_darwin_amd64.tar.gz"
  else
    sha256 "21b6a1243dee2f42fe864c8332c527edede0eef23440dd2403cd2ef29243bfd3"
    url "https://releases.mondoo.io/mondoo/5.21.0/mondoo_5.21.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

