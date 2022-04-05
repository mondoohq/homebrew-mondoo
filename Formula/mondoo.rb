
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "5.33.0"

  if Hardware::CPU.intel?
    sha256 "1d7ae4b27bc352059f38782d0c56cbe4194259fb6d0a59c49486988309e3d660"
    url "https://releases.mondoo.com/mondoo/5.33.0/mondoo_5.33.0_darwin_amd64.tar.gz"
  else
    sha256 "dcc65ab2f89546819ad436bc824239224142e101f0bf87a9d159a120d78ba8a5"
    url "https://releases.mondoo.com/mondoo/5.33.0/mondoo_5.33.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

