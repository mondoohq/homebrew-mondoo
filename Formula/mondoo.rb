
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "8.21.3"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "24789e632bcd46dfde1536729162cb3517535fb90a5d4480984eebab934aef60"
    url "https://releases.mondoo.com/mondoo/8.21.3/mondoo_8.21.3_darwin_amd64.tar.gz"
  else
    sha256 "24789e632bcd46dfde1536729162cb3517535fb90a5d4480984eebab934aef60"
    url "https://releases.mondoo.com/mondoo/8.21.3/mondoo_8.21.3_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

