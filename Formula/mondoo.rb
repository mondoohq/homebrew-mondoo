
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "6.13.1"

  if Hardware::CPU.intel?
    sha256 "5d08161bc911da76fa471fff552b22d83b17cb0ccda3f7bc1a2115c1c5e7f077"
    url "https://releases.mondoo.com/mondoo/6.13.1/mondoo_6.13.1_darwin_amd64.tar.gz"
  else
    sha256 "eb1e24398faabf1f7defc63703a66172c7a698b66eb4e2e1eb588d4754137998"
    url "https://releases.mondoo.com/mondoo/6.13.1/mondoo_6.13.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

