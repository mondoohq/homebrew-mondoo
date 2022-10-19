
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "7.0.1"

  if Hardware::CPU.intel?
    sha256 "0848b4b7f436ef46817f2cb82abed7ba538533f4770b1f2dde787b19f57aa111"
    url "https://releases.mondoo.com/mondoo/7.0.1/mondoo_7.0.1_darwin_amd64.tar.gz"
  else
    sha256 "43d68b4873da07923689fcc8ea8d7829bc8a39385dafc7722064961ca171e3f0"
    url "https://releases.mondoo.com/mondoo/7.0.1/mondoo_7.0.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

