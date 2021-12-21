
class Mondoo < Formula
  desc "Mondoo"
  homepage "https://mondoo.io"
  version "5.19.0"

  if Hardware::CPU.intel?
    sha256 "8ad055cb634de5241a855d89f01d6712d2db426c76a0769e5355e66599fd6cee"
    url "https://releases.mondoo.io/mondoo/5.19.0/mondoo_5.19.0_darwin_amd64.tar.gz"
  else
    sha256 "2e1a662eef73f4e838a5b44b89f19f3d48826f1d067f519d48ff5e96dcb1c5d9"
    url "https://releases.mondoo.io/mondoo/5.19.0/mondoo_5.19.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

