
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "8.21.1"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "6440b3a2d6e2ca2d02a2b4cad218d8e6f8f0fb13dee121374f403c1f79a69575"
    url "https://releases.mondoo.com/mondoo/8.21.1/mondoo_8.21.1_darwin_amd64.tar.gz"
  else
    sha256 "6440b3a2d6e2ca2d02a2b4cad218d8e6f8f0fb13dee121374f403c1f79a69575"
    url "https://releases.mondoo.com/mondoo/8.21.1/mondoo_8.21.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

