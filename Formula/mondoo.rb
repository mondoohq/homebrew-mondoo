
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.io"
  version "5.25.1"

  if Hardware::CPU.intel?
    sha256 "664160a10d568af20223d2fa130b9fdb2a99db33c1fc41018af9e0f51c69249e"
    url "https://releases.mondoo.io/mondoo/5.25.1/mondoo_5.25.1_darwin_amd64.tar.gz"
  else
    sha256 "14e60ba821c7ba0ee9fbd5cea4ac1af17c5a8935d4386857d88801313f86fd08"
    url "https://releases.mondoo.io/mondoo/5.25.1/mondoo_5.25.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

