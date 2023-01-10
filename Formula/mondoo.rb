
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "7.12.0"

  if Hardware::CPU.intel?
    sha256 "72ce3fa6a58372a7d2e059d6f74335ac08322312a933dc3b958a8225841eb989"
    url "https://releases.mondoo.com/mondoo/7.12.0/mondoo_7.12.0_darwin_amd64.tar.gz"
  else
    sha256 "99e65f87dc607933a648b0fea9a20bf01c65670319989a91bf409257042a68ac"
    url "https://releases.mondoo.com/mondoo/7.12.0/mondoo_7.12.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

