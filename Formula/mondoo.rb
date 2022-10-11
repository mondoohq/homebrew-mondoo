
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "6.19.0"

  if Hardware::CPU.intel?
    sha256 "64ee8ab346da5708400f86956966e67b825b2f123256f24a4d2cc5f21109133a"
    url "https://releases.mondoo.com/mondoo/6.19.0/mondoo_6.19.0_darwin_amd64.tar.gz"
  else
    sha256 "8ad5782baadb1eda4209ffa294d64a3150d5a58769016d4ae33da3e480242aae"
    url "https://releases.mondoo.com/mondoo/6.19.0/mondoo_6.19.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

