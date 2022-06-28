
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "6.4.0"

  if Hardware::CPU.intel?
    sha256 "d44d46ec8c6a06d5de049087a87210e1a59b5ce682ff93c33deef06a908d5a67"
    url "https://releases.mondoo.com/mondoo/6.4.0/mondoo_6.4.0_darwin_amd64.tar.gz"
  else
    sha256 "62b0801aad71cca161ff48998cf55e49214da3178d06db763bae76bc4235cf50"
    url "https://releases.mondoo.com/mondoo/6.4.0/mondoo_6.4.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

