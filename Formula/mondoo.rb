
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "6.5.0"

  if Hardware::CPU.intel?
    sha256 "1f6d06d110a09fe190b878ffc2cb028c8cda538f8f0ae61c6cea18fca1f77fc5"
    url "https://releases.mondoo.com/mondoo/6.5.0/mondoo_6.5.0_darwin_amd64.tar.gz"
  else
    sha256 "9fb6b9407f1cbd07ace5cf492533025b6d2780437b0376582b1f853d4e5bf66c"
    url "https://releases.mondoo.com/mondoo/6.5.0/mondoo_6.5.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

